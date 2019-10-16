; ModuleID = 'fftbench/fftbench.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::complex" = type { { double, double } }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.polynomial = type { i32 (...)**, double*, i64 }
%class.polynomial.0 = type { i32 (...)**, %"struct.std::complex"*, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon.1 }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon.1 = type { i64, [8 x i8] }
%"class.std::overflow_error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" }

$_ZN10polynomialIdE4PI2IE = comdat any

$_ZNSt7complexIdEC2Edd = comdat any

$_ZN10polynomialIdEC2Em = comdat any

$_ZN10polynomialIdEixEm = comdat any

$_ZNK10polynomialIdEmlERKS0_ = comdat any

$_ZN10polynomialIdEaSERKS0_ = comdat any

$_ZN10polynomialIdED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN10polynomialIdE7releaseEv = comdat any

$_ZN10polynomialIdED0Ev = comdat any

$_ZN10polynomialIdE7acquireEv = comdat any

$_ZN10polynomialIdE9deep_copyEPKd = comdat any

$_ZN10polynomialIdEC2ERKS0_ = comdat any

$_ZNK10polynomialIdE6degreeEv = comdat any

$_ZN10polynomialIdE11stretch_fftEv = comdat any

$_ZN10polynomialIdE7stretchEm = comdat any

$_ZN10polynomialIdE3fftERKS0_ = comdat any

$_ZN10polynomialISt7complexIdEEixEm = comdat any

$_ZNSt7complexIdEmLIdEERS0_RKS_IT_E = comdat any

$_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE = comdat any

$_ZN10polynomialISt7complexIdEEaSERKS2_ = comdat any

$_ZN10polynomialISt7complexIdEED2Ev = comdat any

$_ZNSt7complexIdE4realEv = comdat any

$_ZN10polynomialISt7complexIdEE7releaseEv = comdat any

$_ZN10polynomialISt7complexIdEED0Ev = comdat any

$_ZN10polynomialISt7complexIdEE7acquireEv = comdat any

$_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_ = comdat any

$_ZNK10polynomialISt7complexIdEE6degreeEv = comdat any

$_ZN10polynomialIdE4log2Em = comdat any

$_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE = comdat any

$_ZStngIdESt7complexIT_ERKS2_ = comdat any

$_ZStdvIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZSt3expIdESt7complexIT_ERKS2_ = comdat any

$_ZNSt7complexIdEaSEd = comdat any

$_ZStmlIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStplIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZStmiIdESt7complexIT_ERKS2_S4_ = comdat any

$_ZNSt7complexIdEdVEd = comdat any

$_ZNSt7complexIdEmIIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE4realEv = comdat any

$_ZNKSt7complexIdE4imagEv = comdat any

$_ZNSt7complexIdEpLIdEERS0_RKS_IT_E = comdat any

$_ZNKSt7complexIdE5__repEv = comdat any

$_ZSt13__complex_expCd = comdat any

$_ZNSt7complexIdEC2ECd = comdat any

$_ZNSt7complexIdEdVIdEERS0_RKS_IT_E = comdat any

$_ZN10polynomialISt7complexIdEEC2Em = comdat any

$_ZNK10polynomialISt7complexIdEE3getEm = comdat any

$_ZN10polynomialIdE9flip_bitsEmm = comdat any

$_ZN10polynomialIdE11bit_reverseERKS0_ = comdat any

$_ZNK10polynomialIdE3getEm = comdat any

$_ZTV10polynomialIdE = comdat any

$_ZTI10polynomialIdE = comdat any

$_ZTS10polynomialIdE = comdat any

$_ZTV10polynomialISt7complexIdEE = comdat any

$_ZTI10polynomialISt7complexIdEE = comdat any

$_ZTS10polynomialISt7complexIdEE = comdat any

@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @__cxx_global_var_init.3, i8* bitcast (%"struct.std::complex"* @_ZN10polynomialIdE4PI2IE to i8*) }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fftbench.cpp, i8* null }]
@_ZN10polynomialIdE4PI2IE = linkonce_odr global %"struct.std::complex" zeroinitializer, comdat, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZGVN10polynomialIdE4PI2IE = linkonce_odr global i64 0, comdat($_ZN10polynomialIdE4PI2IE), align 8
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"\0Afftbench (Std. C++) run time: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZTV10polynomialIdE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10polynomialIdE to i8*), i8* bitcast (void (%class.polynomial*)* @_ZN10polynomialIdED2Ev to i8*), i8* bitcast (void (%class.polynomial*)* @_ZN10polynomialIdED0Ev to i8*)] }, comdat, align 8
@_ZTI10polynomialIdE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_ZTS10polynomialIdE, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS10polynomialIdE = linkonce_odr constant [16 x i8] c"10polynomialIdE\00", comdat
@_ZTV10polynomialISt7complexIdEE = linkonce_odr unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10polynomialISt7complexIdEE to i8*), i8* bitcast (void (%class.polynomial.0*)* @_ZN10polynomialISt7complexIdEED2Ev to i8*), i8* bitcast (void (%class.polynomial.0*)* @_ZN10polynomialISt7complexIdEED0Ev to i8*)] }, comdat, align 8
@_ZTI10polynomialISt7complexIdEE = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTS10polynomialISt7complexIdEE, i32 0, i32 0) }, comdat
@_ZTS10polynomialISt7complexIdEE = linkonce_odr constant [28 x i8] c"10polynomialISt7complexIdEE\00", comdat
@.str.4 = private unnamed_addr constant [35 x i8] c"overflow in fft polynomial stretch\00", align 1
@_ZTISt14overflow_error = external constant i8*
@_ZZL13random_doublevE4seed = internal global i64 1325, align 8

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" comdat($_ZN10polynomialIdE4PI2IE) {
entry:
  %0 = load i8, i8* bitcast (i64* @_ZGVN10polynomialIdE4PI2IE to i8*), align 8
  %guard.uninitialized = icmp eq i8 %0, 0
  br i1 %guard.uninitialized, label %init.check, label %init.end

init.check:                                       ; preds = %entry
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* @_ZN10polynomialIdE4PI2IE, double 0.000000e+00, double 0x401921FB54442D18)
  store i64 1, i64* @_ZGVN10polynomialIdE4PI2IE, align 8
  br label %init.end

init.end:                                         ; preds = %init.check, %entry
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_fftbench.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %this, double %__r, double %__i) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__r.addr = alloca double, align 8
  %__i.addr = alloca double, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store double %__r, double* %__r.addr, align 8
  store double %__i, double* %__i.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load double, double* %__r.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  store double %0, double* %_M_value.realp, align 8
  %1 = load double, double* %__i.addr, align 8
  %_M_value2 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value2.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value2, i32 0, i32 1
  store double %1, double* %_M_value2.imagp, align 8
  ret void
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ga_testing = alloca i8, align 1
  %i = alloca i32, align 4
  %poly1 = alloca %class.polynomial, align 8
  %poly2 = alloca %class.polynomial, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %poly3 = alloca %class.polynomial, align 8
  %n = alloca i32, align 4
  %ref.tmp = alloca %class.polynomial, align 8
  %run_time = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %ga_testing, align 1
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)) #13
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %for.body
  store i8 1, i8* %ga_testing, align 1
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then2, %for.cond
  br label %if.end3

if.end3:                                          ; preds = %for.end, %entry
  call void @_ZN10polynomialIdEC2Em(%class.polynomial* %poly1, i64 524288)
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %poly2, i64 524288)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end3
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %poly3, i64 1048575)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont
  store i32 0, i32* %n, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %invoke.cont5
  %6 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %6, 524288
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %call11 = invoke double @_ZL13random_doublev()
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %for.body8
  %7 = load i32, i32* %n, align 4
  %conv = sext i32 %7 to i64
  %call13 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %poly1, i64 %conv)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  store double %call11, double* %call13, align 8
  %call15 = invoke double @_ZL13random_doublev()
          to label %invoke.cont14 unwind label %lpad9

invoke.cont14:                                    ; preds = %invoke.cont12
  %8 = load i32, i32* %n, align 4
  %conv16 = sext i32 %8 to i64
  %call18 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %poly2, i64 %conv16)
          to label %invoke.cont17 unwind label %lpad9

invoke.cont17:                                    ; preds = %invoke.cont14
  store double %call15, double* %call18, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %invoke.cont17
  %9 = load i32, i32* %n, align 4
  %inc20 = add nsw i32 %9, 1
  store i32 %inc20, i32* %n, align 4
  br label %for.cond6

lpad:                                             ; preds = %invoke.cont41, %if.end3
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %exn.slot, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %ehselector.slot, align 4
  br label %ehcleanup46

lpad4:                                            ; preds = %invoke.cont39, %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  store i8* %14, i8** %exn.slot, align 8
  %15 = extractvalue { i8*, i32 } %13, 1
  store i32 %15, i32* %ehselector.slot, align 4
  br label %ehcleanup44

lpad9:                                            ; preds = %if.end38, %invoke.cont34, %invoke.cont32, %if.else, %if.then29, %invoke.cont24, %for.end21, %invoke.cont14, %invoke.cont12, %invoke.cont10, %for.body8
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %exn.slot, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %ehselector.slot, align 4
  br label %ehcleanup

for.end21:                                        ; preds = %for.cond6
  invoke void @_ZNK10polynomialIdEmlERKS0_(%class.polynomial* sret %ref.tmp, %class.polynomial* %poly1, %class.polynomial* dereferenceable(24) %poly2)
          to label %invoke.cont22 unwind label %lpad9

invoke.cont22:                                    ; preds = %for.end21
  %call25 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdEaSERKS0_(%class.polynomial* %poly3, %class.polynomial* dereferenceable(24) %ref.tmp)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont22
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %ref.tmp)
          to label %invoke.cont26 unwind label %lpad9

invoke.cont26:                                    ; preds = %invoke.cont24
  store double 0.000000e+00, double* %run_time, align 8
  %19 = load i8, i8* %ga_testing, align 1
  %tobool28 = trunc i8 %19 to i1
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %invoke.cont26
  %20 = load double, double* %run_time, align 8
  %call31 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* @_ZSt4cout, double %20)
          to label %invoke.cont30 unwind label %lpad9

invoke.cont30:                                    ; preds = %if.then29
  br label %if.end38

lpad23:                                           ; preds = %invoke.cont22
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %exn.slot, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %ref.tmp)
          to label %invoke.cont27 unwind label %terminate.lpad

invoke.cont27:                                    ; preds = %lpad23
  br label %ehcleanup

if.else:                                          ; preds = %invoke.cont26
  %call33 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
          to label %invoke.cont32 unwind label %lpad9

invoke.cont32:                                    ; preds = %if.else
  %24 = load double, double* %run_time, align 8
  %call35 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call33, double %24)
          to label %invoke.cont34 unwind label %lpad9

invoke.cont34:                                    ; preds = %invoke.cont32
  %call37 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
          to label %invoke.cont36 unwind label %lpad9

invoke.cont36:                                    ; preds = %invoke.cont34
  br label %if.end38

if.end38:                                         ; preds = %invoke.cont36, %invoke.cont30
  %call40 = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* @_ZSt4cout)
          to label %invoke.cont39 unwind label %lpad9

invoke.cont39:                                    ; preds = %if.end38
  store i32 0, i32* %retval, align 4
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly3)
          to label %invoke.cont41 unwind label %lpad4

invoke.cont41:                                    ; preds = %invoke.cont39
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly2)
          to label %invoke.cont43 unwind label %lpad

ehcleanup:                                        ; preds = %invoke.cont27, %lpad9
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly3)
          to label %invoke.cont42 unwind label %terminate.lpad

invoke.cont42:                                    ; preds = %ehcleanup
  br label %ehcleanup44

invoke.cont43:                                    ; preds = %invoke.cont41
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly1)
  %25 = load i32, i32* %retval, align 4
  ret i32 %25

ehcleanup44:                                      ; preds = %invoke.cont42, %lpad4
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly2)
          to label %invoke.cont45 unwind label %terminate.lpad

invoke.cont45:                                    ; preds = %ehcleanup44
  br label %ehcleanup46

ehcleanup46:                                      ; preds = %invoke.cont45, %lpad
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %poly1)
          to label %invoke.cont47 unwind label %terminate.lpad

invoke.cont47:                                    ; preds = %ehcleanup46
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont47
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val48 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val48

terminate.lpad:                                   ; preds = %ehcleanup46, %ehcleanup44, %ehcleanup, %lpad23
  %26 = landingpad { i8*, i32 }
          catch i8* null
  %27 = extractvalue { i8*, i32 } %26, 0
  call void @__clang_call_terminate(i8* %27) #14
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdEC2Em(%class.polynomial* %this, i64 %degree) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %degree.addr = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store i64 %degree, i64* %degree.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %0 = bitcast %class.polynomial* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  store double* null, double** %m_coeff, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %1 = load i64, i64* %degree.addr, align 8
  store i64 %1, i64* %m_degree, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %this1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @_ZL13random_doublev() #3 {
entry:
  %k = alloca i64, align 8
  %result = alloca double, align 8
  %0 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %xor = xor i64 %0, 123459876
  store i64 %xor, i64* @_ZZL13random_doublevE4seed, align 8
  %1 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %div = sdiv i64 %1, 127773
  store i64 %div, i64* %k, align 8
  %2 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %3 = load i64, i64* %k, align 8
  %mul = mul nsw i64 %3, 127773
  %sub = sub nsw i64 %2, %mul
  %mul1 = mul nsw i64 16807, %sub
  %4 = load i64, i64* %k, align 8
  %mul2 = mul nsw i64 2836, %4
  %sub3 = sub nsw i64 %mul1, %mul2
  store i64 %sub3, i64* @_ZZL13random_doublevE4seed, align 8
  %5 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %add = add nsw i64 %6, 2147483647
  store i64 %add, i64* @_ZZL13random_doublevE4seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %conv = sitofp i64 %7 to double
  %mul4 = fmul double 0x3E340000002813D9, %conv
  store double %mul4, double* %result, align 8
  %8 = load i64, i64* @_ZZL13random_doublevE4seed, align 8
  %xor5 = xor i64 %8, 123459876
  store i64 %xor5, i64* @_ZZL13random_doublevE4seed, align 8
  %9 = load double, double* %result, align 8
  ret double %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %this, i64 %term) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %term.addr = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store i64 %term, i64* %term.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %0 = load double*, double** %m_coeff, align 8
  %1 = load i64, i64* %term.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 %1
  ret double* %arrayidx
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK10polynomialIdEmlERKS0_(%class.polynomial* noalias sret %agg.result, %class.polynomial* %this, %class.polynomial* dereferenceable(24) %poly) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %poly.addr = alloca %class.polynomial*, align 8
  %a1 = alloca %class.polynomial, align 8
  %a2 = alloca %class.polynomial, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %dft1 = alloca %class.polynomial.0, align 8
  %dft2 = alloca %class.polynomial.0, align 8
  %n2 = alloca i64, align 8
  %k = alloca i64, align 8
  %ref.tmp = alloca %class.polynomial.0, align 8
  %nrvo = alloca i1, align 1
  %k34 = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store %class.polynomial* %poly, %class.polynomial** %poly.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  call void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %a1, %class.polynomial* dereferenceable(24) %this1)
  %0 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  invoke void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %a2, %class.polynomial* dereferenceable(24) %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %call = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %a1)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  %call5 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %a2)
          to label %invoke.cont4 unwind label %lpad2

invoke.cont4:                                     ; preds = %invoke.cont3
  %cmp = icmp ugt i64 %call, %call5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont4
  %call7 = invoke i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %a1)
          to label %invoke.cont6 unwind label %lpad2

invoke.cont6:                                     ; preds = %if.then
  %call9 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %a2, i64 %call7)
          to label %invoke.cont8 unwind label %lpad2

invoke.cont8:                                     ; preds = %invoke.cont6
  br label %if.end

lpad:                                             ; preds = %invoke.cont52, %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %ehcleanup58

lpad2:                                            ; preds = %invoke.cont50, %if.end, %invoke.cont10, %if.else, %invoke.cont6, %if.then, %invoke.cont3, %invoke.cont
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  store i8* %5, i8** %exn.slot, align 8
  %6 = extractvalue { i8*, i32 } %4, 1
  store i32 %6, i32* %ehselector.slot, align 4
  br label %ehcleanup56

if.else:                                          ; preds = %invoke.cont4
  %call11 = invoke i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %a2)
          to label %invoke.cont10 unwind label %lpad2

invoke.cont10:                                    ; preds = %if.else
  %call13 = invoke dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %a1, i64 %call11)
          to label %invoke.cont12 unwind label %lpad2

invoke.cont12:                                    ; preds = %invoke.cont10
  br label %if.end

if.end:                                           ; preds = %invoke.cont12, %invoke.cont8
  invoke void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* sret %dft1, %class.polynomial* dereferenceable(24) %a1)
          to label %invoke.cont14 unwind label %lpad2

invoke.cont14:                                    ; preds = %if.end
  invoke void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* sret %dft2, %class.polynomial* dereferenceable(24) %a2)
          to label %invoke.cont16 unwind label %lpad15

invoke.cont16:                                    ; preds = %invoke.cont14
  %call19 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %a1)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont16
  store i64 %call19, i64* %n2, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont18
  %7 = load i64, i64* %k, align 8
  %8 = load i64, i64* %n2, align 8
  %cmp20 = icmp ult i64 %7, %8
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %k, align 8
  %call22 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %dft2, i64 %9)
          to label %invoke.cont21 unwind label %lpad17

invoke.cont21:                                    ; preds = %for.body
  %10 = load i64, i64* %k, align 8
  %call24 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %dft1, i64 %10)
          to label %invoke.cont23 unwind label %lpad17

invoke.cont23:                                    ; preds = %invoke.cont21
  %call26 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %call24, %"struct.std::complex"* dereferenceable(16) %call22)
          to label %invoke.cont25 unwind label %lpad17

invoke.cont25:                                    ; preds = %invoke.cont23
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont25
  %11 = load i64, i64* %k, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %k, align 8
  br label %for.cond

lpad15:                                           ; preds = %nrvo.skipdtor, %invoke.cont14
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  store i8* %13, i8** %exn.slot, align 8
  %14 = extractvalue { i8*, i32 } %12, 1
  store i32 %14, i32* %ehselector.slot, align 4
  br label %ehcleanup53

lpad17:                                           ; preds = %nrvo.unused, %invoke.cont31, %invoke.cont29, %for.end, %invoke.cont23, %invoke.cont21, %for.body, %invoke.cont16
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  br label %ehcleanup

for.end:                                          ; preds = %for.cond
  invoke void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(%class.polynomial.0* sret %ref.tmp, %class.polynomial.0* dereferenceable(24) %dft1)
          to label %invoke.cont27 unwind label %lpad17

invoke.cont27:                                    ; preds = %for.end
  %call30 = invoke dereferenceable(24) %class.polynomial.0* @_ZN10polynomialISt7complexIdEEaSERKS2_(%class.polynomial.0* %dft2, %class.polynomial.0* dereferenceable(24) %ref.tmp)
          to label %invoke.cont29 unwind label %lpad28

invoke.cont29:                                    ; preds = %invoke.cont27
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %ref.tmp)
          to label %invoke.cont31 unwind label %lpad17

invoke.cont31:                                    ; preds = %invoke.cont29
  %18 = load i64, i64* %n2, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %n2, align 8
  store i1 false, i1* %nrvo, align 1
  %19 = load i64, i64* %n2, align 8
  invoke void @_ZN10polynomialIdEC2Em(%class.polynomial* %agg.result, i64 %19)
          to label %invoke.cont33 unwind label %lpad17

invoke.cont33:                                    ; preds = %invoke.cont31
  store i64 0, i64* %k34, align 8
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc45, %invoke.cont33
  %20 = load i64, i64* %k34, align 8
  %21 = load i64, i64* %n2, align 8
  %cmp36 = icmp ult i64 %20, %21
  br i1 %cmp36, label %for.body37, label %for.end47

for.body37:                                       ; preds = %for.cond35
  %22 = load i64, i64* %k34, align 8
  %call40 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %dft2, i64 %22)
          to label %invoke.cont39 unwind label %lpad38

invoke.cont39:                                    ; preds = %for.body37
  %call42 = invoke dereferenceable(8) double* @_ZNSt7complexIdE4realEv(%"struct.std::complex"* %call40)
          to label %invoke.cont41 unwind label %lpad38

invoke.cont41:                                    ; preds = %invoke.cont39
  %23 = load double, double* %call42, align 8
  %24 = load i64, i64* %k34, align 8
  %call44 = invoke dereferenceable(8) double* @_ZN10polynomialIdEixEm(%class.polynomial* %agg.result, i64 %24)
          to label %invoke.cont43 unwind label %lpad38

invoke.cont43:                                    ; preds = %invoke.cont41
  store double %23, double* %call44, align 8
  br label %for.inc45

for.inc45:                                        ; preds = %invoke.cont43
  %25 = load i64, i64* %k34, align 8
  %inc46 = add i64 %25, 1
  store i64 %inc46, i64* %k34, align 8
  br label %for.cond35

lpad28:                                           ; preds = %invoke.cont27
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %ref.tmp)
          to label %invoke.cont32 unwind label %terminate.lpad

invoke.cont32:                                    ; preds = %lpad28
  br label %ehcleanup

lpad38:                                           ; preds = %invoke.cont41, %invoke.cont39, %for.body37
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = extractvalue { i8*, i32 } %29, 0
  store i8* %30, i8** %exn.slot, align 8
  %31 = extractvalue { i8*, i32 } %29, 1
  store i32 %31, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %agg.result)
          to label %invoke.cont49 unwind label %terminate.lpad

for.end47:                                        ; preds = %for.cond35
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end47
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %agg.result)
          to label %invoke.cont48 unwind label %lpad17

invoke.cont48:                                    ; preds = %nrvo.unused
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %invoke.cont48, %for.end47
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %dft2)
          to label %invoke.cont50 unwind label %lpad15

invoke.cont49:                                    ; preds = %lpad38
  br label %ehcleanup

invoke.cont50:                                    ; preds = %nrvo.skipdtor
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %dft1)
          to label %invoke.cont52 unwind label %lpad2

ehcleanup:                                        ; preds = %invoke.cont49, %invoke.cont32, %lpad17
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %dft2)
          to label %invoke.cont51 unwind label %terminate.lpad

invoke.cont51:                                    ; preds = %ehcleanup
  br label %ehcleanup53

invoke.cont52:                                    ; preds = %invoke.cont50
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %a2)
          to label %invoke.cont55 unwind label %lpad

ehcleanup53:                                      ; preds = %invoke.cont51, %lpad15
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %dft1)
          to label %invoke.cont54 unwind label %terminate.lpad

invoke.cont54:                                    ; preds = %ehcleanup53
  br label %ehcleanup56

invoke.cont55:                                    ; preds = %invoke.cont52
  call void @_ZN10polynomialIdED2Ev(%class.polynomial* %a1)
  ret void

ehcleanup56:                                      ; preds = %invoke.cont54, %lpad2
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %a2)
          to label %invoke.cont57 unwind label %terminate.lpad

invoke.cont57:                                    ; preds = %ehcleanup56
  br label %ehcleanup58

ehcleanup58:                                      ; preds = %invoke.cont57, %lpad
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %a1)
          to label %invoke.cont59 unwind label %terminate.lpad

invoke.cont59:                                    ; preds = %ehcleanup58
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont59
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val60 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val60

terminate.lpad:                                   ; preds = %ehcleanup58, %ehcleanup56, %ehcleanup53, %ehcleanup, %lpad38, %lpad28
  %32 = landingpad { i8*, i32 }
          catch i8* null
  %33 = extractvalue { i8*, i32 } %32, 0
  call void @__clang_call_terminate(i8* %33) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.polynomial* @_ZN10polynomialIdEaSERKS0_(%class.polynomial* %this, %class.polynomial* dereferenceable(24) %source) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %source.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store %class.polynomial* %source, %class.polynomial** %source.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  %1 = load %class.polynomial*, %class.polynomial** %source.addr, align 8
  %m_degree2 = getelementptr inbounds %class.polynomial, %class.polynomial* %1, i32 0, i32 2
  %2 = load i64, i64* %m_degree2, align 8
  %cmp = icmp ne i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %this1)
  %3 = load %class.polynomial*, %class.polynomial** %source.addr, align 8
  %m_degree3 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 2
  %4 = load i64, i64* %m_degree3, align 8
  %m_degree4 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  store i64 %4, i64* %m_degree4, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %class.polynomial*, %class.polynomial** %source.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %5, i32 0, i32 1
  %6 = load double*, double** %m_coeff, align 8
  call void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %this1, double* %6)
  ret %class.polynomial* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdED2Ev(%class.polynomial* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %0 = bitcast %class.polynomial* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  call void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %this1)
  ret void
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"*, double) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"*) #1

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #14
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10polynomialIdE7releaseEv(%class.polynomial* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %0 = load double*, double** %m_coeff, align 8
  %isnull = icmp eq double* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast double* %0 to i8*
  call void @_ZdaPv(i8* %1) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdED0Ev(%class.polynomial* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  invoke void @_ZN10polynomialIdED2Ev(%class.polynomial* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.polynomial* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.polynomial* %this1 to i8*
  call void @_ZdlPv(i8* %4) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 8)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = call i8* @_Znam(i64 %4) #16
  %5 = bitcast i8* %call to double*
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  store double* %5, double** %m_coeff, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %this, double* %source) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %source.addr = alloca double*, align 8
  %n = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store double* %source, double** %source.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %1 = load i64, i64* %m_degree, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %source.addr, align 8
  %3 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %3
  %4 = load double, double* %arrayidx, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %5 = load double*, double** %m_coeff, align 8
  %6 = load i64, i64* %n, align 8
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %6
  store double %4, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %n, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #8

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #9

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdEC2ERKS0_(%class.polynomial* %this, %class.polynomial* dereferenceable(24) %source) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %source.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store %class.polynomial* %source, %class.polynomial** %source.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %0 = bitcast %class.polynomial* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialIdE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  store double* null, double** %m_coeff, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %1 = load %class.polynomial*, %class.polynomial** %source.addr, align 8
  %m_degree2 = getelementptr inbounds %class.polynomial, %class.polynomial* %1, i32 0, i32 2
  %2 = load i64, i64* %m_degree2, align 8
  store i64 %2, i64* %m_degree, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %this1)
  %3 = load %class.polynomial*, %class.polynomial** %source.addr, align 8
  %m_coeff3 = getelementptr inbounds %class.polynomial, %class.polynomial* %3, i32 0, i32 1
  %4 = load double*, double** %m_coeff3, align 8
  call void @_ZN10polynomialIdE9deep_copyEPKd(%class.polynomial* %this1, double* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  ret i64 %0
}

; Function Attrs: noinline uwtable
define linkonce_odr i64 @_ZN10polynomialIdE11stretch_fftEv(%class.polynomial* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %n = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp4 = alloca %"class.std::ios_base::Init", align 1
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %cleanup.isactive = alloca i1, align 1
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  store i64 1, i64* %n, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end10
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  %1 = load i64, i64* %n, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load i64, i64* %n, align 8
  %shl = shl i64 %2, 1
  store i64 %shl, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  %exception = call i8* @__cxa_allocate_exception(i64 16) #2
  store i1 true, i1* %cleanup.isactive, align 1
  %4 = bitcast i8* %exception to %"class.std::overflow_error"*
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %ref.tmp, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), %"class.std::ios_base::Init"* dereferenceable(1) %ref.tmp4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then3
  invoke void @_ZNSt14overflow_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::overflow_error"* %4, %"class.std::__cxx11::basic_string"* dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont
  store i1 false, i1* %cleanup.isactive, align 1
  invoke void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTISt14overflow_error to i8*), i8* bitcast (void (%"class.std::overflow_error"*)* @_ZNSt14overflow_errorD1Ev to i8*)) #17
          to label %unreachable unwind label %lpad5

throw.cont:                                       ; No predecessors!
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %throw.cont
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #2
  br label %if.end10

lpad:                                             ; preds = %throw.cont, %if.then3
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont6, %invoke.cont
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %ref.tmp)
          to label %invoke.cont8 unwind label %terminate.lpad

invoke.cont8:                                     ; preds = %lpad5
  br label %ehcleanup

ehcleanup:                                        ; preds = %invoke.cont8, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* %ref.tmp4) #2
  %cleanup.is_active = load i1, i1* %cleanup.isactive, align 1
  br i1 %cleanup.is_active, label %cleanup.action, label %cleanup.done

cleanup.action:                                   ; preds = %ehcleanup
  call void @__cxa_free_exception(i8* %exception) #2
  br label %cleanup.done

cleanup.done:                                     ; preds = %cleanup.action, %ehcleanup
  br label %eh.resume

if.end10:                                         ; preds = %invoke.cont7, %if.end
  br label %while.body

while.end:                                        ; preds = %if.then
  %11 = load i64, i64* %n, align 8
  %shl11 = shl i64 %11, 1
  store i64 %shl11, i64* %n, align 8
  %m_degree12 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %12 = load i64, i64* %m_degree12, align 8
  %13 = load i64, i64* %n, align 8
  %sub = sub i64 %13, %12
  store i64 %sub, i64* %n, align 8
  %14 = load i64, i64* %n, align 8
  %cmp13 = icmp ugt i64 %14, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.end
  %15 = load i64, i64* %n, align 8
  %call = call dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %this1, i64 %15)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.end
  %16 = load i64, i64* %n, align 8
  ret i64 %16

eh.resume:                                        ; preds = %cleanup.done
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val16 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val16

terminate.lpad:                                   ; preds = %lpad5
  %17 = landingpad { i8*, i32 }
          catch i8* null
  %18 = extractvalue { i8*, i32 } %17, 0
  call void @__clang_call_terminate(i8* %18) #14
  unreachable

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.polynomial* @_ZN10polynomialIdE7stretchEm(%class.polynomial* %this, i64 %degrees) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %degrees.addr = alloca i64, align 8
  %old_coeff = alloca double*, align 8
  %old_degree = alloca i64, align 8
  %n = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store i64 %degrees, i64* %degrees.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %0 = load i64, i64* %degrees.addr, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %1 = load double*, double** %m_coeff, align 8
  store double* %1, double** %old_coeff, align 8
  %m_degree = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %2 = load i64, i64* %m_degree, align 8
  store i64 %2, i64* %old_degree, align 8
  %3 = load i64, i64* %degrees.addr, align 8
  %m_degree2 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %4 = load i64, i64* %m_degree2, align 8
  %add = add i64 %4, %3
  store i64 %add, i64* %m_degree2, align 8
  call void @_ZN10polynomialIdE7acquireEv(%class.polynomial* %this1)
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i64, i64* %n, align 8
  %6 = load i64, i64* %old_degree, align 8
  %cmp3 = icmp ult i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load double*, double** %old_coeff, align 8
  %8 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds double, double* %7, i64 %8
  %9 = load double, double* %arrayidx, align 8
  %m_coeff4 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %10 = load double*, double** %m_coeff4, align 8
  %11 = load i64, i64* %n, align 8
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 %11
  store double %9, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %n, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %13 = load i64, i64* %n, align 8
  %m_degree7 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 2
  %14 = load i64, i64* %m_degree7, align 8
  %cmp8 = icmp ult i64 %13, %14
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond6
  %m_coeff10 = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %15 = load double*, double** %m_coeff10, align 8
  %16 = load i64, i64* %n, align 8
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %16
  store double 0.000000e+00, double* %arrayidx11, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %17 = load i64, i64* %n, align 8
  %inc13 = add i64 %17, 1
  store i64 %inc13, i64* %n, align 8
  br label %for.cond6

for.end14:                                        ; preds = %for.cond6
  br label %if.end

if.end:                                           ; preds = %for.end14, %entry
  ret %class.polynomial* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdE3fftERKS0_(%class.polynomial.0* noalias sret %agg.result, %class.polynomial* dereferenceable(24) %poly) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %poly.addr = alloca %class.polynomial*, align 8
  %nl = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %m = alloca i64, align 8
  %m2 = alloca i64, align 8
  %s = alloca i64, align 8
  %wm = alloca %"struct.std::complex", align 8
  %w = alloca %"struct.std::complex", align 8
  %t = alloca %"struct.std::complex", align 8
  %u = alloca %"struct.std::complex", align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"struct.std::complex", align 8
  %ref.tmp2 = alloca %"struct.std::complex", align 8
  %ref.tmp3 = alloca %"struct.std::complex", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp20 = alloca %"struct.std::complex", align 8
  %ref.tmp28 = alloca %"struct.std::complex", align 8
  %ref.tmp34 = alloca %"struct.std::complex", align 8
  store %class.polynomial* %poly, %class.polynomial** %poly.addr, align 8
  %0 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %call = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %0)
  %call1 = call i64 @_ZN10polynomialIdE4log2Em(i64 %call)
  store i64 %call1, i64* %nl, align 8
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %wm, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %w, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %t, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %u, double 0.000000e+00, double 0.000000e+00)
  store i1 false, i1* %nrvo, align 1
  %1 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  call void @_ZN10polynomialIdE11bit_reverseERKS0_(%class.polynomial.0* sret %agg.result, %class.polynomial* dereferenceable(24) %1)
  store i64 2, i64* %m, align 8
  store i64 1, i64* %m2, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc47, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %nl, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end49

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %m, align 8
  %conv = uitofp i64 %4 to double
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %ref.tmp3, double %conv, double 0.000000e+00)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %call5 = invoke { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) @_ZN10polynomialIdE4PI2IE, %"struct.std::complex"* dereferenceable(16) %ref.tmp3)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %invoke.cont
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp2, i32 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 0
  %6 = extractvalue { double, double } %call5, 0
  store double %6, double* %5, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 1
  %8 = extractvalue { double, double } %call5, 1
  store double %8, double* %7, align 8
  %call7 = invoke { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %ref.tmp2)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %coerce.dive8 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive8, i32 0, i32 0
  %10 = extractvalue { double, double } %call7, 0
  store double %10, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive8, i32 0, i32 1
  %12 = extractvalue { double, double } %call7, 1
  store double %12, double* %11, align 8
  %13 = bitcast %"struct.std::complex"* %wm to i8*
  %14 = bitcast %"struct.std::complex"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false)
  %call10 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %w, double 1.000000e+00)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont6
  store i64 0, i64* %j, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc44, %invoke.cont9
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %m2, align 8
  %sub = sub i64 %16, 1
  %cmp12 = icmp ule i64 %15, %sub
  br i1 %cmp12, label %for.body13, label %for.end45

for.body13:                                       ; preds = %for.cond11
  %17 = load i64, i64* %j, align 8
  store i64 %17, i64* %k, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %for.body13
  %18 = load i64, i64* %k, align 8
  %19 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %call16 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %19)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %for.cond14
  %sub17 = sub i64 %call16, 1
  %cmp18 = icmp ule i64 %18, %sub17
  br i1 %cmp18, label %for.body19, label %for.end

for.body19:                                       ; preds = %invoke.cont15
  %20 = load i64, i64* %k, align 8
  %21 = load i64, i64* %m2, align 8
  %add = add i64 %20, %21
  %call22 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %add)
          to label %invoke.cont21 unwind label %lpad

invoke.cont21:                                    ; preds = %for.body19
  %call24 = invoke { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %w, %"struct.std::complex"* dereferenceable(16) %call22)
          to label %invoke.cont23 unwind label %lpad

invoke.cont23:                                    ; preds = %invoke.cont21
  %coerce.dive25 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp20, i32 0, i32 0
  %22 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive25, i32 0, i32 0
  %23 = extractvalue { double, double } %call24, 0
  store double %23, double* %22, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive25, i32 0, i32 1
  %25 = extractvalue { double, double } %call24, 1
  store double %25, double* %24, align 8
  %26 = bitcast %"struct.std::complex"* %t to i8*
  %27 = bitcast %"struct.std::complex"* %ref.tmp20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = load i64, i64* %k, align 8
  %call27 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %28)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %invoke.cont23
  %29 = bitcast %"struct.std::complex"* %u to i8*
  %30 = bitcast %"struct.std::complex"* %call27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 8, i1 false)
  %call30 = invoke { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %u, %"struct.std::complex"* dereferenceable(16) %t)
          to label %invoke.cont29 unwind label %lpad

invoke.cont29:                                    ; preds = %invoke.cont26
  %coerce.dive31 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp28, i32 0, i32 0
  %31 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive31, i32 0, i32 0
  %32 = extractvalue { double, double } %call30, 0
  store double %32, double* %31, align 8
  %33 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive31, i32 0, i32 1
  %34 = extractvalue { double, double } %call30, 1
  store double %34, double* %33, align 8
  %35 = load i64, i64* %k, align 8
  %call33 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %35)
          to label %invoke.cont32 unwind label %lpad

invoke.cont32:                                    ; preds = %invoke.cont29
  %36 = bitcast %"struct.std::complex"* %call33 to i8*
  %37 = bitcast %"struct.std::complex"* %ref.tmp28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 16, i32 8, i1 false)
  %call36 = invoke { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %u, %"struct.std::complex"* dereferenceable(16) %t)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %invoke.cont32
  %coerce.dive37 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp34, i32 0, i32 0
  %38 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive37, i32 0, i32 0
  %39 = extractvalue { double, double } %call36, 0
  store double %39, double* %38, align 8
  %40 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive37, i32 0, i32 1
  %41 = extractvalue { double, double } %call36, 1
  store double %41, double* %40, align 8
  %42 = load i64, i64* %k, align 8
  %43 = load i64, i64* %m2, align 8
  %add38 = add i64 %42, %43
  %call40 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %add38)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont35
  %44 = bitcast %"struct.std::complex"* %call40 to i8*
  %45 = bitcast %"struct.std::complex"* %ref.tmp34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont39
  %46 = load i64, i64* %m, align 8
  %47 = load i64, i64* %k, align 8
  %add41 = add i64 %47, %46
  store i64 %add41, i64* %k, align 8
  br label %for.cond14

lpad:                                             ; preds = %for.end, %invoke.cont35, %invoke.cont32, %invoke.cont29, %invoke.cont26, %invoke.cont23, %invoke.cont21, %for.body19, %for.cond14, %invoke.cont6, %invoke.cont4, %invoke.cont, %for.body
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  store i8* %49, i8** %exn.slot, align 8
  %50 = extractvalue { i8*, i32 } %48, 1
  store i32 %50, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
          to label %invoke.cont50 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont15
  %call43 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %w, %"struct.std::complex"* dereferenceable(16) %wm)
          to label %invoke.cont42 unwind label %lpad

invoke.cont42:                                    ; preds = %for.end
  br label %for.inc44

for.inc44:                                        ; preds = %invoke.cont42
  %51 = load i64, i64* %j, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond11

for.end45:                                        ; preds = %for.cond11
  %52 = load i64, i64* %m, align 8
  %shl = shl i64 %52, 1
  store i64 %shl, i64* %m, align 8
  %53 = load i64, i64* %m2, align 8
  %shl46 = shl i64 %53, 1
  store i64 %shl46, i64* %m2, align 8
  br label %for.inc47

for.inc47:                                        ; preds = %for.end45
  %54 = load i64, i64* %s, align 8
  %inc48 = add i64 %54, 1
  store i64 %inc48, i64* %s, align 8
  br label %for.cond

for.end49:                                        ; preds = %for.cond
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end49
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end49
  ret void

invoke.cont50:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont50
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val51 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val51

terminate.lpad:                                   ; preds = %lpad
  %55 = landingpad { i8*, i32 }
          catch i8* null
  %56 = extractvalue { i8*, i32 } %55, 0
  call void @__clang_call_terminate(i8* %56) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %this, i64 %term) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %term.addr = alloca i64, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  store i64 %term, i64* %term.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %m_coeff, align 8
  %1 = load i64, i64* %term.addr, align 8
  %arrayidx = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %0, i64 %1
  ret %"struct.std::complex"* %arrayidx
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %this, %"struct.std::complex"* dereferenceable(16) %__z) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__z.addr = alloca %"struct.std::complex"*, align 8
  %__t = alloca { double, double }, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store %"struct.std::complex"* %__z, %"struct.std::complex"** %__z.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %0)
  %1 = load double, double* %call, align 8
  %__t.realp = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 0
  store double %1, double* %__t.realp, align 8
  %2 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %2)
  %3 = load double, double* %call2, align 8
  %__t.imagp = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 1
  store double %3, double* %__t.imagp, align 8
  %__t.realp3 = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 0
  %__t.real = load double, double* %__t.realp3, align 8
  %__t.imagp4 = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 1
  %__t.imag = load double, double* %__t.imagp4, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.real = load double, double* %_M_value.realp, align 8
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  %_M_value.imag = load double, double* %_M_value.imagp, align 8
  %mul_ac = fmul double %_M_value.real, %__t.real
  %mul_bd = fmul double %_M_value.imag, %__t.imag
  %mul_ad = fmul double %_M_value.real, %__t.imag
  %mul_bc = fmul double %_M_value.imag, %__t.real
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !1

complex_mul_imag_nan:                             ; preds = %entry
  %isnan_cmp5 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp5, label %complex_mul_libcall, label %complex_mul_cont, !prof !1

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call6 = call { double, double } @__muldc3(double %_M_value.real, double %_M_value.imag, double %__t.real, double %__t.imag) #2
  %4 = extractvalue { double, double } %call6, 0
  %5 = extractvalue { double, double } %call6, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %entry
  %real_mul_phi = phi double [ %mul_r, %entry ], [ %mul_r, %complex_mul_imag_nan ], [ %4, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %entry ], [ %mul_i, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %_M_value.realp7 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.imagp8 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  store double %real_mul_phi, double* %_M_value.realp7, align 8
  store double %imag_mul_phi, double* %_M_value.imagp8, align 8
  ret %"struct.std::complex"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(%class.polynomial.0* noalias sret %agg.result, %class.polynomial.0* dereferenceable(24) %poly) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %poly.addr = alloca %class.polynomial.0*, align 8
  %nl = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %m = alloca i64, align 8
  %m2 = alloca i64, align 8
  %s = alloca i64, align 8
  %wm = alloca %"struct.std::complex", align 8
  %w = alloca %"struct.std::complex", align 8
  %t = alloca %"struct.std::complex", align 8
  %u = alloca %"struct.std::complex", align 8
  %nrvo = alloca i1, align 1
  %ref.tmp = alloca %"struct.std::complex", align 8
  %ref.tmp2 = alloca %"struct.std::complex", align 8
  %ref.tmp3 = alloca %"struct.std::complex", align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp5 = alloca %"struct.std::complex", align 8
  %ref.tmp24 = alloca %"struct.std::complex", align 8
  %ref.tmp32 = alloca %"struct.std::complex", align 8
  %ref.tmp38 = alloca %"struct.std::complex", align 8
  store %class.polynomial.0* %poly, %class.polynomial.0** %poly.addr, align 8
  %0 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %0)
  %call1 = call i64 @_ZN10polynomialIdE4log2Em(i64 %call)
  store i64 %call1, i64* %nl, align 8
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %wm, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %w, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %t, double 0.000000e+00, double 0.000000e+00)
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %u, double 0.000000e+00, double 0.000000e+00)
  store i1 false, i1* %nrvo, align 1
  %1 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  call void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(%class.polynomial.0* sret %agg.result, %class.polynomial.0* dereferenceable(24) %1)
  store i64 2, i64* %m, align 8
  store i64 1, i64* %m2, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc51, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %nl, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end53

for.body:                                         ; preds = %for.cond
  %call4 = invoke { double, double } @_ZStngIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) @_ZN10polynomialIdE4PI2IE)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp3, i32 0, i32 0
  %4 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 0
  %5 = extractvalue { double, double } %call4, 0
  store double %5, double* %4, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 1
  %7 = extractvalue { double, double } %call4, 1
  store double %7, double* %6, align 8
  %8 = load i64, i64* %m, align 8
  %conv = uitofp i64 %8 to double
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %ref.tmp5, double %conv, double 0.000000e+00)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont
  %call8 = invoke { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %ref.tmp3, %"struct.std::complex"* dereferenceable(16) %ref.tmp5)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont6
  %coerce.dive9 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp2, i32 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive9, i32 0, i32 0
  %10 = extractvalue { double, double } %call8, 0
  store double %10, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive9, i32 0, i32 1
  %12 = extractvalue { double, double } %call8, 1
  store double %12, double* %11, align 8
  %call11 = invoke { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %ref.tmp2)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont7
  %coerce.dive12 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp, i32 0, i32 0
  %13 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive12, i32 0, i32 0
  %14 = extractvalue { double, double } %call11, 0
  store double %14, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive12, i32 0, i32 1
  %16 = extractvalue { double, double } %call11, 1
  store double %16, double* %15, align 8
  %17 = bitcast %"struct.std::complex"* %wm to i8*
  %18 = bitcast %"struct.std::complex"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %call14 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %w, double 1.000000e+00)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont10
  store i64 0, i64* %j, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc48, %invoke.cont13
  %19 = load i64, i64* %j, align 8
  %20 = load i64, i64* %m2, align 8
  %sub = sub i64 %20, 1
  %cmp16 = icmp ule i64 %19, %sub
  br i1 %cmp16, label %for.body17, label %for.end49

for.body17:                                       ; preds = %for.cond15
  %21 = load i64, i64* %j, align 8
  store i64 %21, i64* %k, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body17
  %22 = load i64, i64* %k, align 8
  %23 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call20 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %23)
          to label %invoke.cont19 unwind label %lpad

invoke.cont19:                                    ; preds = %for.cond18
  %sub21 = sub i64 %call20, 1
  %cmp22 = icmp ule i64 %22, %sub21
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %invoke.cont19
  %24 = load i64, i64* %k, align 8
  %25 = load i64, i64* %m2, align 8
  %add = add i64 %24, %25
  %call26 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %add)
          to label %invoke.cont25 unwind label %lpad

invoke.cont25:                                    ; preds = %for.body23
  %call28 = invoke { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %w, %"struct.std::complex"* dereferenceable(16) %call26)
          to label %invoke.cont27 unwind label %lpad

invoke.cont27:                                    ; preds = %invoke.cont25
  %coerce.dive29 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp24, i32 0, i32 0
  %26 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive29, i32 0, i32 0
  %27 = extractvalue { double, double } %call28, 0
  store double %27, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive29, i32 0, i32 1
  %29 = extractvalue { double, double } %call28, 1
  store double %29, double* %28, align 8
  %30 = bitcast %"struct.std::complex"* %t to i8*
  %31 = bitcast %"struct.std::complex"* %ref.tmp24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false)
  %32 = load i64, i64* %k, align 8
  %call31 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %32)
          to label %invoke.cont30 unwind label %lpad

invoke.cont30:                                    ; preds = %invoke.cont27
  %33 = bitcast %"struct.std::complex"* %u to i8*
  %34 = bitcast %"struct.std::complex"* %call31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 16, i32 8, i1 false)
  %call34 = invoke { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %u, %"struct.std::complex"* dereferenceable(16) %t)
          to label %invoke.cont33 unwind label %lpad

invoke.cont33:                                    ; preds = %invoke.cont30
  %coerce.dive35 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp32, i32 0, i32 0
  %35 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive35, i32 0, i32 0
  %36 = extractvalue { double, double } %call34, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive35, i32 0, i32 1
  %38 = extractvalue { double, double } %call34, 1
  store double %38, double* %37, align 8
  %39 = load i64, i64* %k, align 8
  %call37 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %39)
          to label %invoke.cont36 unwind label %lpad

invoke.cont36:                                    ; preds = %invoke.cont33
  %40 = bitcast %"struct.std::complex"* %call37 to i8*
  %41 = bitcast %"struct.std::complex"* %ref.tmp32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false)
  %call40 = invoke { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %u, %"struct.std::complex"* dereferenceable(16) %t)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont36
  %coerce.dive41 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp38, i32 0, i32 0
  %42 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive41, i32 0, i32 0
  %43 = extractvalue { double, double } %call40, 0
  store double %43, double* %42, align 8
  %44 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive41, i32 0, i32 1
  %45 = extractvalue { double, double } %call40, 1
  store double %45, double* %44, align 8
  %46 = load i64, i64* %k, align 8
  %47 = load i64, i64* %m2, align 8
  %add42 = add i64 %46, %47
  %call44 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %add42)
          to label %invoke.cont43 unwind label %lpad

invoke.cont43:                                    ; preds = %invoke.cont39
  %48 = bitcast %"struct.std::complex"* %call44 to i8*
  %49 = bitcast %"struct.std::complex"* %ref.tmp38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont43
  %50 = load i64, i64* %m, align 8
  %51 = load i64, i64* %k, align 8
  %add45 = add i64 %51, %50
  store i64 %add45, i64* %k, align 8
  br label %for.cond18

lpad:                                             ; preds = %invoke.cont62, %invoke.cont59, %for.body58, %for.cond54, %for.end, %invoke.cont39, %invoke.cont36, %invoke.cont33, %invoke.cont30, %invoke.cont27, %invoke.cont25, %for.body23, %for.cond18, %invoke.cont10, %invoke.cont7, %invoke.cont6, %invoke.cont, %for.body
  %52 = landingpad { i8*, i32 }
          cleanup
  %53 = extractvalue { i8*, i32 } %52, 0
  store i8* %53, i8** %exn.slot, align 8
  %54 = extractvalue { i8*, i32 } %52, 1
  store i32 %54, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
          to label %invoke.cont69 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont19
  %call47 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %w, %"struct.std::complex"* dereferenceable(16) %wm)
          to label %invoke.cont46 unwind label %lpad

invoke.cont46:                                    ; preds = %for.end
  br label %for.inc48

for.inc48:                                        ; preds = %invoke.cont46
  %55 = load i64, i64* %j, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond15

for.end49:                                        ; preds = %for.cond15
  %56 = load i64, i64* %m, align 8
  %shl = shl i64 %56, 1
  store i64 %shl, i64* %m, align 8
  %57 = load i64, i64* %m2, align 8
  %shl50 = shl i64 %57, 1
  store i64 %shl50, i64* %m2, align 8
  br label %for.inc51

for.inc51:                                        ; preds = %for.end49
  %58 = load i64, i64* %s, align 8
  %inc52 = add i64 %58, 1
  store i64 %inc52, i64* %s, align 8
  br label %for.cond

for.end53:                                        ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc66, %for.end53
  %59 = load i64, i64* %j, align 8
  %60 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call56 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %60)
          to label %invoke.cont55 unwind label %lpad

invoke.cont55:                                    ; preds = %for.cond54
  %cmp57 = icmp ult i64 %59, %call56
  br i1 %cmp57, label %for.body58, label %for.end68

for.body58:                                       ; preds = %invoke.cont55
  %61 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call60 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %61)
          to label %invoke.cont59 unwind label %lpad

invoke.cont59:                                    ; preds = %for.body58
  %conv61 = uitofp i64 %call60 to double
  %62 = load i64, i64* %j, align 8
  %call63 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %62)
          to label %invoke.cont62 unwind label %lpad

invoke.cont62:                                    ; preds = %invoke.cont59
  %call65 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVEd(%"struct.std::complex"* %call63, double %conv61)
          to label %invoke.cont64 unwind label %lpad

invoke.cont64:                                    ; preds = %invoke.cont62
  br label %for.inc66

for.inc66:                                        ; preds = %invoke.cont64
  %63 = load i64, i64* %j, align 8
  %inc67 = add i64 %63, 1
  store i64 %inc67, i64* %j, align 8
  br label %for.cond54

for.end68:                                        ; preds = %invoke.cont55
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end68
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end68
  ret void

invoke.cont69:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont69
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val70 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val70

terminate.lpad:                                   ; preds = %lpad
  %64 = landingpad { i8*, i32 }
          catch i8* null
  %65 = extractvalue { i8*, i32 } %64, 0
  call void @__clang_call_terminate(i8* %65) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %class.polynomial.0* @_ZN10polynomialISt7complexIdEEaSERKS2_(%class.polynomial.0* %this, %class.polynomial.0* dereferenceable(24) %source) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %source.addr = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  store %class.polynomial.0* %source, %class.polynomial.0** %source.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  %1 = load %class.polynomial.0*, %class.polynomial.0** %source.addr, align 8
  %m_degree2 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %1, i32 0, i32 2
  %2 = load i64, i64* %m_degree2, align 8
  %cmp = icmp ne i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %this1)
  %3 = load %class.polynomial.0*, %class.polynomial.0** %source.addr, align 8
  %m_degree3 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %3, i32 0, i32 2
  %4 = load i64, i64* %m_degree3, align 8
  %m_degree4 = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  store i64 %4, i64* %m_degree4, align 8
  call void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %class.polynomial.0*, %class.polynomial.0** %source.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %5, i32 0, i32 1
  %6 = load %"struct.std::complex"*, %"struct.std::complex"** %m_coeff, align 8
  call void @_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_(%class.polynomial.0* %this1, %"struct.std::complex"* %6)
  ret %class.polynomial.0* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %this) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %0 = bitcast %class.polynomial.0* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialISt7complexIdEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  call void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %this1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNSt7complexIdE4realEv(%"struct.std::complex"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  ret double* %_M_value.realp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEE7releaseEv(%class.polynomial.0* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %m_coeff, align 8
  %isnull = icmp eq %"struct.std::complex"* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.std::complex"* %0 to i8*
  call void @_ZdaPv(i8* %1) #15
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEED0Ev(%class.polynomial.0* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.polynomial.0* %this1 to i8*
  call void @_ZdlPv(i8* %0) #15
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.polynomial.0* %this1 to i8*
  call void @_ZdlPv(i8* %4) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %this) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 16)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = call i8* @_Znam(i64 %4) #16
  %5 = bitcast i8* %call to %"struct.std::complex"*
  %isempty = icmp eq i64 %0, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %5, i64 %0
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %"struct.std::complex"* [ %5, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %arrayctor.cur, double 0.000000e+00, double 0.000000e+00)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %"struct.std::complex"* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %entry, %invoke.cont
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  store %"struct.std::complex"* %5, %"struct.std::complex"** %m_coeff, align 8
  ret void

lpad:                                             ; preds = %arrayctor.loop
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call) #15
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEE9deep_copyEPKS1_(%class.polynomial.0* %this, %"struct.std::complex"* %source) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %source.addr = alloca %"struct.std::complex"*, align 8
  %n = alloca i64, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  store %"struct.std::complex"* %source, %"struct.std::complex"** %source.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %m_degree = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  %1 = load i64, i64* %m_degree, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %"struct.std::complex"*, %"struct.std::complex"** %source.addr, align 8
  %3 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %2, i64 %3
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  %4 = load %"struct.std::complex"*, %"struct.std::complex"** %m_coeff, align 8
  %5 = load i64, i64* %n, align 8
  %arrayidx2 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %4, i64 %5
  %6 = bitcast %"struct.std::complex"* %arrayidx2 to i8*
  %7 = bitcast %"struct.std::complex"* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %n, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_degree = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  %0 = load i64, i64* %m_degree, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN10polynomialIdE4log2Em(i64 %n) #3 comdat align 2 {
entry:
  %n.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 1, i64* %x, align 8
  store i64 0, i64* %c, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i64, i64* %x, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %c, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %c, align 8
  %3 = load i64, i64* %x, align 8
  %shl = shl i64 %3, 1
  store i64 %shl, i64* %x, align 8
  %4 = load i64, i64* %x, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %5 = load i64, i64* %c, align 8
  ret i64 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE(%class.polynomial.0* noalias sret %agg.result, %class.polynomial.0* dereferenceable(24) %poly) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %poly.addr = alloca %class.polynomial.0*, align 8
  %b = alloca i64, align 8
  %nrvo = alloca i1, align 1
  %n = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %"struct.std::complex", align 8
  store %class.polynomial.0* %poly, %class.polynomial.0** %poly.addr, align 8
  %0 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %0)
  %call1 = call i64 @_ZN10polynomialIdE4log2Em(i64 %call)
  store i64 %call1, i64* %b, align 8
  store i1 false, i1* %nrvo, align 1
  %1 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call2 = call i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %1)
  call void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %agg.result, i64 %call2)
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %n, align 8
  %3 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %call3 = invoke i64 @_ZNK10polynomialISt7complexIdEE6degreeEv(%class.polynomial.0* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %cmp = icmp ult i64 %2, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %4 = load %class.polynomial.0*, %class.polynomial.0** %poly.addr, align 8
  %5 = load i64, i64* %n, align 8
  %call5 = invoke { double, double } @_ZNK10polynomialISt7complexIdEE3getEm(%class.polynomial.0* %4, i64 %5)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %for.body
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %ref.tmp, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 0
  %7 = extractvalue { double, double } %call5, 0
  store double %7, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %coerce.dive, i32 0, i32 1
  %9 = extractvalue { double, double } %call5, 1
  store double %9, double* %8, align 8
  %10 = load i64, i64* %n, align 8
  %11 = load i64, i64* %b, align 8
  %call7 = invoke i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %10, i64 %11)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %call9 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %call7)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %12 = bitcast %"struct.std::complex"* %call9 to i8*
  %13 = bitcast %"struct.std::complex"* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont8
  %14 = load i64, i64* %n, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

lpad:                                             ; preds = %invoke.cont6, %invoke.cont4, %for.body, %for.cond
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  store i8* %16, i8** %exn.slot, align 8
  %17 = extractvalue { i8*, i32 } %15, 1
  store i32 %17, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
          to label %invoke.cont10 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  ret void

invoke.cont10:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont10
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val11

terminate.lpad:                                   ; preds = %lpad
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #14
  unreachable
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZStngIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %__x) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__x.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %__x, %"struct.std::complex"** %__x.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %0)
  %1 = load double, double* %call, align 8
  %sub = fsub double -0.000000e+00, %1
  %2 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %call1 = call dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %2)
  %3 = load double, double* %call1, align 8
  %sub2 = fsub double -0.000000e+00, %3
  call void @_ZNSt7complexIdEC2Edd(%"struct.std::complex"* %retval, double %sub, double %sub2)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZStdvIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %__x, %"struct.std::complex"* dereferenceable(16) %__y) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__x.addr = alloca %"struct.std::complex"*, align 8
  %__y.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %__x, %"struct.std::complex"** %__x.addr, align 8
  store %"struct.std::complex"* %__y, %"struct.std::complex"** %__y.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %1 = bitcast %"struct.std::complex"* %retval to i8*
  %2 = bitcast %"struct.std::complex"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__y.addr, align 8
  %call = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVIdEERS0_RKS_IT_E(%"struct.std::complex"* %retval, %"struct.std::complex"* dereferenceable(16) %3)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZSt3expIdESt7complexIT_ERKS2_(%"struct.std::complex"* dereferenceable(16) %__z) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__z.addr = alloca %"struct.std::complex"*, align 8
  %coerce = alloca { double, double }, align 8
  %coerce2 = alloca { double, double }, align 8
  store %"struct.std::complex"* %__z, %"struct.std::complex"** %__z.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call = call { double, double } @_ZNKSt7complexIdE5__repEv(%"struct.std::complex"* %0)
  %1 = extractvalue { double, double } %call, 0
  %2 = extractvalue { double, double } %call, 1
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %1, double* %coerce.realp, align 8
  store double %2, double* %coerce.imagp, align 8
  %3 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %6 = load double, double* %5, align 8
  %call1 = call { double, double } @_ZSt13__complex_expCd(double %4, double %6)
  %7 = extractvalue { double, double } %call1, 0
  %8 = extractvalue { double, double } %call1, 1
  %coerce2.realp = getelementptr inbounds { double, double }, { double, double }* %coerce2, i32 0, i32 0
  %coerce2.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce2, i32 0, i32 1
  store double %7, double* %coerce2.realp, align 8
  store double %8, double* %coerce2.imagp, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %coerce2, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %coerce2, i32 0, i32 1
  %12 = load double, double* %11, align 8
  call void @_ZNSt7complexIdEC2ECd(%"struct.std::complex"* %retval, double %10, double %12)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %13 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %this, double %__d) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__d.addr = alloca double, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store double %__d, double* %__d.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load double, double* %__d.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  store double %0, double* %_M_value.realp, align 8
  store double 0.000000e+00, double* %_M_value.imagp, align 8
  ret %"struct.std::complex"* %this1
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZStmlIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %__x, %"struct.std::complex"* dereferenceable(16) %__y) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__x.addr = alloca %"struct.std::complex"*, align 8
  %__y.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %__x, %"struct.std::complex"** %__x.addr, align 8
  store %"struct.std::complex"* %__y, %"struct.std::complex"** %__y.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %1 = bitcast %"struct.std::complex"* %retval to i8*
  %2 = bitcast %"struct.std::complex"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__y.addr, align 8
  %call = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmLIdEERS0_RKS_IT_E(%"struct.std::complex"* %retval, %"struct.std::complex"* dereferenceable(16) %3)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZStplIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %__x, %"struct.std::complex"* dereferenceable(16) %__y) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__x.addr = alloca %"struct.std::complex"*, align 8
  %__y.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %__x, %"struct.std::complex"** %__x.addr, align 8
  store %"struct.std::complex"* %__y, %"struct.std::complex"** %__y.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %1 = bitcast %"struct.std::complex"* %retval to i8*
  %2 = bitcast %"struct.std::complex"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__y.addr, align 8
  %call = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(%"struct.std::complex"* %retval, %"struct.std::complex"* dereferenceable(16) %3)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline uwtable
define linkonce_odr { double, double } @_ZStmiIdESt7complexIT_ERKS2_S4_(%"struct.std::complex"* dereferenceable(16) %__x, %"struct.std::complex"* dereferenceable(16) %__y) #0 comdat {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %__x.addr = alloca %"struct.std::complex"*, align 8
  %__y.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %__x, %"struct.std::complex"** %__x.addr, align 8
  store %"struct.std::complex"* %__y, %"struct.std::complex"** %__y.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__x.addr, align 8
  %1 = bitcast %"struct.std::complex"* %retval to i8*
  %2 = bitcast %"struct.std::complex"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false)
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__y.addr, align 8
  %call = call dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmIIdEERS0_RKS_IT_E(%"struct.std::complex"* %retval, %"struct.std::complex"* dereferenceable(16) %3)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVEd(%"struct.std::complex"* %this, double %__d) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__d.addr = alloca double, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store double %__d, double* %__d.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load double, double* %__d.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.real = load double, double* %_M_value.realp, align 8
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  %_M_value.imag = load double, double* %_M_value.imagp, align 8
  %1 = fdiv double %_M_value.real, %0
  %2 = fdiv double %_M_value.imag, %0
  %_M_value.realp2 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.imagp3 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  store double %1, double* %_M_value.realp2, align 8
  store double %2, double* %_M_value.imagp3, align 8
  ret %"struct.std::complex"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEmIIdEERS0_RKS_IT_E(%"struct.std::complex"* %this, %"struct.std::complex"* dereferenceable(16) %__z) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__z.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store %"struct.std::complex"* %__z, %"struct.std::complex"** %__z.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %0)
  %1 = load double, double* %call, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %2 = load double, double* %_M_value.realp, align 8
  %sub = fsub double %2, %1
  store double %sub, double* %_M_value.realp, align 8
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %3)
  %4 = load double, double* %call2, align 8
  %_M_value3 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value3.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value3, i32 0, i32 1
  %5 = load double, double* %_M_value3.imagp, align 8
  %sub4 = fsub double %5, %4
  store double %sub4, double* %_M_value3.imagp, align 8
  ret %"struct.std::complex"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  ret double* %_M_value.realp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %this) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  ret double* %_M_value.imagp
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEpLIdEERS0_RKS_IT_E(%"struct.std::complex"* %this, %"struct.std::complex"* dereferenceable(16) %__z) #3 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__z.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store %"struct.std::complex"* %__z, %"struct.std::complex"** %__z.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %0)
  %1 = load double, double* %call, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %2 = load double, double* %_M_value.realp, align 8
  %add = fadd double %2, %1
  store double %add, double* %_M_value.realp, align 8
  %3 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %3)
  %4 = load double, double* %call2, align 8
  %_M_value3 = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value3.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value3, i32 0, i32 1
  %5 = load double, double* %_M_value3.imagp, align 8
  %add4 = fadd double %5, %4
  store double %add4, double* %_M_value3.imagp, align 8
  ret %"struct.std::complex"* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { double, double } @_ZNKSt7complexIdE5__repEv(%"struct.std::complex"* %this) #3 comdat align 2 {
entry:
  %retval = alloca { double, double }, align 8
  %this.addr = alloca %"struct.std::complex"*, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.real = load double, double* %_M_value.realp, align 8
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  %_M_value.imag = load double, double* %_M_value.imagp, align 8
  %retval.realp = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 1
  store double %_M_value.real, double* %retval.realp, align 8
  store double %_M_value.imag, double* %retval.imagp, align 8
  %0 = load { double, double }, { double, double }* %retval, align 8
  ret { double, double } %0
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { double, double } @_ZSt13__complex_expCd(double %__z.coerce0, double %__z.coerce1) #3 comdat {
entry:
  %retval = alloca { double, double }, align 8
  %__z = alloca { double, double }, align 8
  %coerce = alloca { double, double }, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 0
  store double %__z.coerce0, double* %0, align 8
  %1 = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 1
  store double %__z.coerce1, double* %1, align 8
  %__z.realp = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 0
  %__z.real = load double, double* %__z.realp, align 8
  %__z.imagp = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 1
  %__z.imag = load double, double* %__z.imagp, align 8
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %__z.real, double* %coerce.realp, align 8
  store double %__z.imag, double* %coerce.imagp, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %3 = load double, double* %2, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %5 = load double, double* %4, align 8
  %call = call { double, double } @cexp(double %3, double %5) #8
  %6 = extractvalue { double, double } %call, 0
  %7 = extractvalue { double, double } %call, 1
  %retval.realp = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds { double, double }, { double, double }* %retval, i32 0, i32 1
  store double %6, double* %retval.realp, align 8
  store double %7, double* %retval.imagp, align 8
  %8 = load { double, double }, { double, double }* %retval, align 8
  ret { double, double } %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZNSt7complexIdEC2ECd(%"struct.std::complex"* %this, double %__z.coerce0, double %__z.coerce1) unnamed_addr #3 comdat align 2 {
entry:
  %__z = alloca { double, double }, align 8
  %this.addr = alloca %"struct.std::complex"*, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 0
  store double %__z.coerce0, double* %0, align 8
  %1 = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 1
  store double %__z.coerce1, double* %1, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %__z.realp = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 0
  %__z.real = load double, double* %__z.realp, align 8
  %__z.imagp = getelementptr inbounds { double, double }, { double, double }* %__z, i32 0, i32 1
  %__z.imag = load double, double* %__z.imagp, align 8
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  store double %__z.real, double* %_M_value.realp, align 8
  store double %__z.imag, double* %_M_value.imagp, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare { double, double } @cexp(double, double) #11

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEdVIdEERS0_RKS_IT_E(%"struct.std::complex"* %this, %"struct.std::complex"* dereferenceable(16) %__z) #0 comdat align 2 {
entry:
  %this.addr = alloca %"struct.std::complex"*, align 8
  %__z.addr = alloca %"struct.std::complex"*, align 8
  %__t = alloca { double, double }, align 8
  store %"struct.std::complex"* %this, %"struct.std::complex"** %this.addr, align 8
  store %"struct.std::complex"* %__z, %"struct.std::complex"** %__z.addr, align 8
  %this1 = load %"struct.std::complex"*, %"struct.std::complex"** %this.addr, align 8
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call = call dereferenceable(8) double* @_ZNKSt7complexIdE4realEv(%"struct.std::complex"* %0)
  %1 = load double, double* %call, align 8
  %__t.realp = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 0
  store double %1, double* %__t.realp, align 8
  %2 = load %"struct.std::complex"*, %"struct.std::complex"** %__z.addr, align 8
  %call2 = call dereferenceable(8) double* @_ZNKSt7complexIdE4imagEv(%"struct.std::complex"* %2)
  %3 = load double, double* %call2, align 8
  %__t.imagp = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 1
  store double %3, double* %__t.imagp, align 8
  %__t.realp3 = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 0
  %__t.real = load double, double* %__t.realp3, align 8
  %__t.imagp4 = getelementptr inbounds { double, double }, { double, double }* %__t, i32 0, i32 1
  %__t.imag = load double, double* %__t.imagp4, align 8
  %_M_value = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %this1, i32 0, i32 0
  %_M_value.realp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.real = load double, double* %_M_value.realp, align 8
  %_M_value.imagp = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  %_M_value.imag = load double, double* %_M_value.imagp, align 8
  %call5 = call { double, double } @__divdc3(double %_M_value.real, double %_M_value.imag, double %__t.real, double %__t.imag) #2
  %4 = extractvalue { double, double } %call5, 0
  %5 = extractvalue { double, double } %call5, 1
  %_M_value.realp6 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 0
  %_M_value.imagp7 = getelementptr inbounds { double, double }, { double, double }* %_M_value, i32 0, i32 1
  store double %4, double* %_M_value.realp6, align 8
  store double %5, double* %_M_value.imagp7, align 8
  ret %"struct.std::complex"* %this1
}

declare { double, double } @__divdc3(double, double, double, double)

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %this, i64 %degree) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial.0*, align 8
  %degree.addr = alloca i64, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  store i64 %degree, i64* %degree.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %0 = bitcast %class.polynomial.0* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV10polynomialISt7complexIdEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  store %"struct.std::complex"* null, %"struct.std::complex"** %m_coeff, align 8
  %m_degree = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 2
  %1 = load i64, i64* %degree.addr, align 8
  store i64 %1, i64* %m_degree, align 8
  call void @_ZN10polynomialISt7complexIdEE7acquireEv(%class.polynomial.0* %this1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr { double, double } @_ZNK10polynomialISt7complexIdEE3getEm(%class.polynomial.0* %this, i64 %term) #3 comdat align 2 {
entry:
  %retval = alloca %"struct.std::complex", align 8
  %this.addr = alloca %class.polynomial.0*, align 8
  %term.addr = alloca i64, align 8
  store %class.polynomial.0* %this, %class.polynomial.0** %this.addr, align 8
  store i64 %term, i64* %term.addr, align 8
  %this1 = load %class.polynomial.0*, %class.polynomial.0** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial.0, %class.polynomial.0* %this1, i32 0, i32 1
  %0 = load %"struct.std::complex"*, %"struct.std::complex"** %m_coeff, align 8
  %1 = load i64, i64* %term.addr, align 8
  %arrayidx = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %0, i64 %1
  %2 = bitcast %"struct.std::complex"* %retval to i8*
  %3 = bitcast %"struct.std::complex"* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %coerce.dive = getelementptr inbounds %"struct.std::complex", %"struct.std::complex"* %retval, i32 0, i32 0
  %4 = load { double, double }, { double, double }* %coerce.dive, align 8
  ret { double, double } %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %k, i64 %bits) #3 comdat align 2 {
entry:
  %k.addr = alloca i64, align 8
  %bits.addr = alloca i64, align 8
  %lm = alloca i64, align 8
  %rm = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %k, i64* %k.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %sub = sub i64 %0, 1
  %sh_prom = trunc i64 %sub to i32
  %shl = shl i32 1, %sh_prom
  %conv = sext i32 %shl to i64
  store i64 %conv, i64* %lm, align 8
  store i64 1, i64* %rm, align 8
  store i64 0, i64* %r, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %lm, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %k.addr, align 8
  %3 = load i64, i64* %rm, align 8
  %and = and i64 %2, %3
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i64, i64* %lm, align 8
  %5 = load i64, i64* %r, align 8
  %or = or i64 %5, %4
  store i64 %or, i64* %r, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i64, i64* %lm, align 8
  %shr = lshr i64 %6, 1
  store i64 %shr, i64* %lm, align 8
  %7 = load i64, i64* %rm, align 8
  %shl2 = shl i64 %7, 1
  store i64 %shl2, i64* %rm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %r, align 8
  ret i64 %8
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN10polynomialIdE11bit_reverseERKS0_(%class.polynomial.0* noalias sret %agg.result, %class.polynomial* dereferenceable(24) %poly) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %poly.addr = alloca %class.polynomial*, align 8
  %b = alloca i64, align 8
  %nrvo = alloca i1, align 1
  %n = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.polynomial* %poly, %class.polynomial** %poly.addr, align 8
  %0 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %call = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %0)
  %call1 = call i64 @_ZN10polynomialIdE4log2Em(i64 %call)
  store i64 %call1, i64* %b, align 8
  store i1 false, i1* %nrvo, align 1
  %1 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %call2 = call i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %1)
  call void @_ZN10polynomialISt7complexIdEEC2Em(%class.polynomial.0* %agg.result, i64 %call2)
  store i64 0, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %n, align 8
  %3 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %call3 = invoke i64 @_ZNK10polynomialIdE6degreeEv(%class.polynomial* %3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %cmp = icmp ult i64 %2, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %invoke.cont
  %4 = load %class.polynomial*, %class.polynomial** %poly.addr, align 8
  %5 = load i64, i64* %n, align 8
  %call5 = invoke double @_ZNK10polynomialIdE3getEm(%class.polynomial* %4, i64 %5)
          to label %invoke.cont4 unwind label %lpad

invoke.cont4:                                     ; preds = %for.body
  %6 = load i64, i64* %n, align 8
  %7 = load i64, i64* %b, align 8
  %call7 = invoke i64 @_ZN10polynomialIdE9flip_bitsEmm(i64 %6, i64 %7)
          to label %invoke.cont6 unwind label %lpad

invoke.cont6:                                     ; preds = %invoke.cont4
  %call9 = invoke dereferenceable(16) %"struct.std::complex"* @_ZN10polynomialISt7complexIdEEixEm(%class.polynomial.0* %agg.result, i64 %call7)
          to label %invoke.cont8 unwind label %lpad

invoke.cont8:                                     ; preds = %invoke.cont6
  %call11 = invoke dereferenceable(16) %"struct.std::complex"* @_ZNSt7complexIdEaSEd(%"struct.std::complex"* %call9, double %call5)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont8
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont10
  %8 = load i64, i64* %n, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond

lpad:                                             ; preds = %invoke.cont8, %invoke.cont6, %invoke.cont4, %for.body, %for.cond
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  store i8* %10, i8** %exn.slot, align 8
  %11 = extractvalue { i8*, i32 } %9, 1
  store i32 %11, i32* %ehselector.slot, align 4
  invoke void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
          to label %invoke.cont12 unwind label %terminate.lpad

for.end:                                          ; preds = %invoke.cont
  store i1 true, i1* %nrvo, align 1
  %nrvo.val = load i1, i1* %nrvo, align 1
  br i1 %nrvo.val, label %nrvo.skipdtor, label %nrvo.unused

nrvo.unused:                                      ; preds = %for.end
  call void @_ZN10polynomialISt7complexIdEED2Ev(%class.polynomial.0* %agg.result)
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end
  ret void

invoke.cont12:                                    ; preds = %lpad
  br label %eh.resume

eh.resume:                                        ; preds = %invoke.cont12
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13

terminate.lpad:                                   ; preds = %lpad
  %12 = landingpad { i8*, i32 }
          catch i8* null
  %13 = extractvalue { i8*, i32 } %12, 0
  call void @__clang_call_terminate(i8* %13) #14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK10polynomialIdE3getEm(%class.polynomial* %this, i64 %term) #3 comdat align 2 {
entry:
  %this.addr = alloca %class.polynomial*, align 8
  %term.addr = alloca i64, align 8
  store %class.polynomial* %this, %class.polynomial** %this.addr, align 8
  store i64 %term, i64* %term.addr, align 8
  %this1 = load %class.polynomial*, %class.polynomial** %this.addr, align 8
  %m_coeff = getelementptr inbounds %class.polynomial, %class.polynomial* %this1, i32 0, i32 1
  %0 = load double*, double** %m_coeff, align 8
  %1 = load i64, i64* %term.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 %1
  %2 = load double, double* %arrayidx, align 8
  ret double %2
}

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"*, i8*, %"class.std::ios_base::Init"* dereferenceable(1)) unnamed_addr #1

declare void @_ZNSt14overflow_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::overflow_error"*, %"class.std::__cxx11::basic_string"* dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt14overflow_errorD1Ev(%"class.std::overflow_error"*) unnamed_addr #12

declare void @__cxa_throw(i8*, i8*, i8*)

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"*) unnamed_addr #12

declare void @__cxa_free_exception(i8*)

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind }
attributes #11 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin }
attributes #17 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = !{!"branch_weights", i32 1, i32 1048575}
