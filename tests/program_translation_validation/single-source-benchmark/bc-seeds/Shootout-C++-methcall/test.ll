; ModuleID = 'Shootout-C++-methcall/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%class.Toggle = type <{ i32 (...)**, i8, [7 x i8] }>
%class.NthToggle = type { %class.Toggle.base, i32, i32, [4 x i8] }
%class.Toggle.base = type <{ i32 (...)**, i8 }>

$_ZN6ToggleC2Eb = comdat any

$_ZN6Toggle5valueEv = comdat any

$_ZN9NthToggleC2Ebi = comdat any

$_ZN9NthToggleD2Ev = comdat any

$_ZN9NthToggleD0Ev = comdat any

$_ZN9NthToggle8activateEv = comdat any

$_ZN6ToggleD2Ev = comdat any

$_ZN6ToggleD0Ev = comdat any

$_ZN6Toggle8activateEv = comdat any

$_ZTV9NthToggle = comdat any

$_ZTI9NthToggle = comdat any

$_ZTS9NthToggle = comdat any

$_ZTI6Toggle = comdat any

$_ZTS6Toggle = comdat any

$_ZTV6Toggle = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_methcall.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZTV9NthToggle = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI9NthToggle to i8*), i8* bitcast (void (%class.NthToggle*)* @_ZN9NthToggleD2Ev to i8*), i8* bitcast (void (%class.NthToggle*)* @_ZN9NthToggleD0Ev to i8*), i8* bitcast (%class.Toggle* (%class.NthToggle*)* @_ZN9NthToggle8activateEv to i8*)] }, comdat, align 8
@_ZTI9NthToggle = linkonce_odr constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9NthToggle, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI6Toggle to i8*) }, comdat
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTS9NthToggle = linkonce_odr constant [11 x i8] c"9NthToggle\00", comdat
@_ZTI6Toggle = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_ZTS6Toggle, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS6Toggle = linkonce_odr constant [8 x i8] c"6Toggle\00", comdat
@_ZTV6Toggle = linkonce_odr unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI6Toggle to i8*), i8* bitcast (void (%class.Toggle*)* @_ZN6ToggleD2Ev to i8*), i8* bitcast (void (%class.Toggle*)* @_ZN6ToggleD0Ev to i8*), i8* bitcast (%class.Toggle* (%class.Toggle*)* @_ZN6Toggle8activateEv to i8*)] }, comdat, align 8

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_methcall.cpp() #0 section ".text.startup" {
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

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %val = alloca i8, align 1
  %toggle = alloca %class.Toggle*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %i = alloca i32, align 4
  %ntoggle = alloca %class.NthToggle*, align 8
  %i15 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1000000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i8 1, i8* %val, align 1
  %call1 = call i8* @_Znwm(i64 16) #9
  %3 = bitcast i8* %call1 to %class.Toggle*
  %4 = load i8, i8* %val, align 1
  %tobool = trunc i8 %4 to i1
  invoke void @_ZN6ToggleC2Eb(%class.Toggle* %3, i1 zeroext %tobool)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %cond.end
  store %class.Toggle* %3, %class.Toggle** %toggle, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %class.Toggle*, %class.Toggle** %toggle, align 8
  %8 = bitcast %class.Toggle* %7 to %class.Toggle* (%class.Toggle*)***
  %vtable = load %class.Toggle* (%class.Toggle*)**, %class.Toggle* (%class.Toggle*)*** %8, align 8
  %vfn = getelementptr inbounds %class.Toggle* (%class.Toggle*)*, %class.Toggle* (%class.Toggle*)** %vtable, i64 2
  %9 = load %class.Toggle* (%class.Toggle*)*, %class.Toggle* (%class.Toggle*)** %vfn, align 8
  %call3 = call dereferenceable(16) %class.Toggle* %9(%class.Toggle* %7)
  %call4 = call zeroext i1 @_ZN6Toggle5valueEv(%class.Toggle* %call3)
  %frombool = zext i1 %call4 to i8
  store i8 %frombool, i8* %val, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

lpad:                                             ; preds = %cond.end
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  store i8* %12, i8** %exn.slot, align 8
  %13 = extractvalue { i8*, i32 } %11, 1
  store i32 %13, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call1) #10
  br label %eh.resume

for.end:                                          ; preds = %for.cond
  %14 = load i8, i8* %val, align 1
  %tobool5 = trunc i8 %14 to i1
  %cond6 = select i1 %tobool5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %cond6)
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call7, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %15 = load %class.Toggle*, %class.Toggle** %toggle, align 8
  %isnull = icmp eq %class.Toggle* %15, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end
  %16 = bitcast %class.Toggle* %15 to void (%class.Toggle*)***
  %vtable9 = load void (%class.Toggle*)**, void (%class.Toggle*)*** %16, align 8
  %vfn10 = getelementptr inbounds void (%class.Toggle*)*, void (%class.Toggle*)** %vtable9, i64 1
  %17 = load void (%class.Toggle*)*, void (%class.Toggle*)** %vfn10, align 8
  call void %17(%class.Toggle* %15)
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end
  store i8 1, i8* %val, align 1
  %call11 = call i8* @_Znwm(i64 24) #9
  %18 = bitcast i8* %call11 to %class.NthToggle*
  %19 = load i8, i8* %val, align 1
  %tobool12 = trunc i8 %19 to i1
  invoke void @_ZN9NthToggleC2Ebi(%class.NthToggle* %18, i1 zeroext %tobool12, i32 3)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %delete.end
  store %class.NthToggle* %18, %class.NthToggle** %ntoggle, align 8
  store i32 0, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %invoke.cont14
  %20 = load i32, i32* %i15, align 4
  %21 = load i32, i32* %n, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %22 = load %class.NthToggle*, %class.NthToggle** %ntoggle, align 8
  %23 = bitcast %class.NthToggle* %22 to %class.Toggle* (%class.NthToggle*)***
  %vtable19 = load %class.Toggle* (%class.NthToggle*)**, %class.Toggle* (%class.NthToggle*)*** %23, align 8
  %vfn20 = getelementptr inbounds %class.Toggle* (%class.NthToggle*)*, %class.Toggle* (%class.NthToggle*)** %vtable19, i64 2
  %24 = load %class.Toggle* (%class.NthToggle*)*, %class.Toggle* (%class.NthToggle*)** %vfn20, align 8
  %call21 = call dereferenceable(16) %class.Toggle* %24(%class.NthToggle* %22)
  %call22 = call zeroext i1 @_ZN6Toggle5valueEv(%class.Toggle* %call21)
  %frombool23 = zext i1 %call22 to i8
  store i8 %frombool23, i8* %val, align 1
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %25 = load i32, i32* %i15, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, i32* %i15, align 4
  br label %for.cond16

lpad13:                                           ; preds = %delete.end
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %exn.slot, align 8
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call11) #10
  br label %eh.resume

for.end26:                                        ; preds = %for.cond16
  %29 = load i8, i8* %val, align 1
  %tobool27 = trunc i8 %29 to i1
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)
  %call29 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %cond28)
  %call30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call29, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %30 = load %class.NthToggle*, %class.NthToggle** %ntoggle, align 8
  %isnull31 = icmp eq %class.NthToggle* %30, null
  br i1 %isnull31, label %delete.end35, label %delete.notnull32

delete.notnull32:                                 ; preds = %for.end26
  %31 = bitcast %class.NthToggle* %30 to void (%class.NthToggle*)***
  %vtable33 = load void (%class.NthToggle*)**, void (%class.NthToggle*)*** %31, align 8
  %vfn34 = getelementptr inbounds void (%class.NthToggle*)*, void (%class.NthToggle*)** %vtable33, i64 1
  %32 = load void (%class.NthToggle*)*, void (%class.NthToggle*)** %vfn34, align 8
  call void %32(%class.NthToggle* %30)
  br label %delete.end35

delete.end35:                                     ; preds = %delete.notnull32, %for.end26
  ret i32 0

eh.resume:                                        ; preds = %lpad13, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val36 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val36
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6ToggleC2Eb(%class.Toggle* %this, i1 zeroext %start_state) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Toggle*, align 8
  %start_state.addr = alloca i8, align 1
  store %class.Toggle* %this, %class.Toggle** %this.addr, align 8
  %frombool = zext i1 %start_state to i8
  store i8 %frombool, i8* %start_state.addr, align 1
  %this1 = load %class.Toggle*, %class.Toggle** %this.addr, align 8
  %0 = bitcast %class.Toggle* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV6Toggle, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %state = getelementptr inbounds %class.Toggle, %class.Toggle* %this1, i32 0, i32 1
  %1 = load i8, i8* %start_state.addr, align 1
  %tobool = trunc i8 %1 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, i8* %state, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i1 @_ZN6Toggle5valueEv(%class.Toggle* %this) #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Toggle*, align 8
  store %class.Toggle* %this, %class.Toggle** %this.addr, align 8
  %this1 = load %class.Toggle*, %class.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %class.Toggle, %class.Toggle* %this1, i32 0, i32 1
  %0 = load i8, i8* %state, align 8
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #7

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9NthToggleC2Ebi(%class.NthToggle* %this, i1 zeroext %start_state, i32 %max_counter) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.NthToggle*, align 8
  %start_state.addr = alloca i8, align 1
  %max_counter.addr = alloca i32, align 4
  store %class.NthToggle* %this, %class.NthToggle** %this.addr, align 8
  %frombool = zext i1 %start_state to i8
  store i8 %frombool, i8* %start_state.addr, align 1
  store i32 %max_counter, i32* %max_counter.addr, align 4
  %this1 = load %class.NthToggle*, %class.NthToggle** %this.addr, align 8
  %0 = bitcast %class.NthToggle* %this1 to %class.Toggle*
  %1 = load i8, i8* %start_state.addr, align 1
  %tobool = trunc i8 %1 to i1
  call void @_ZN6ToggleC2Eb(%class.Toggle* %0, i1 zeroext %tobool)
  %2 = bitcast %class.NthToggle* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV9NthToggle, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8
  %count_max = getelementptr inbounds %class.NthToggle, %class.NthToggle* %this1, i32 0, i32 1
  %3 = load i32, i32* %max_counter.addr, align 4
  store i32 %3, i32* %count_max, align 4
  %counter = getelementptr inbounds %class.NthToggle, %class.NthToggle* %this1, i32 0, i32 2
  store i32 0, i32* %counter, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9NthToggleD2Ev(%class.NthToggle* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.NthToggle*, align 8
  store %class.NthToggle* %this, %class.NthToggle** %this.addr, align 8
  %this1 = load %class.NthToggle*, %class.NthToggle** %this.addr, align 8
  %0 = bitcast %class.NthToggle* %this1 to %class.Toggle*
  call void @_ZN6ToggleD2Ev(%class.Toggle* %0)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9NthToggleD0Ev(%class.NthToggle* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.NthToggle*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.NthToggle* %this, %class.NthToggle** %this.addr, align 8
  %this1 = load %class.NthToggle*, %class.NthToggle** %this.addr, align 8
  invoke void @_ZN9NthToggleD2Ev(%class.NthToggle* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.NthToggle* %this1 to i8*
  call void @_ZdlPv(i8* %0) #10
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.NthToggle* %this1 to i8*
  call void @_ZdlPv(i8* %4) #10
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Toggle* @_ZN9NthToggle8activateEv(%class.NthToggle* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.NthToggle*, align 8
  store %class.NthToggle* %this, %class.NthToggle** %this.addr, align 8
  %this1 = load %class.NthToggle*, %class.NthToggle** %this.addr, align 8
  %counter = getelementptr inbounds %class.NthToggle, %class.NthToggle* %this1, i32 0, i32 2
  %0 = load i32, i32* %counter, align 8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 8
  %count_max = getelementptr inbounds %class.NthToggle, %class.NthToggle* %this1, i32 0, i32 1
  %1 = load i32, i32* %count_max, align 4
  %cmp = icmp sge i32 %inc, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %class.NthToggle* %this1 to %class.Toggle*
  %state = getelementptr inbounds %class.Toggle, %class.Toggle* %2, i32 0, i32 1
  %3 = load i8, i8* %state, align 8
  %tobool = trunc i8 %3 to i1
  %lnot = xor i1 %tobool, true
  %4 = bitcast %class.NthToggle* %this1 to %class.Toggle*
  %state2 = getelementptr inbounds %class.Toggle, %class.Toggle* %4, i32 0, i32 1
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %state2, align 8
  %counter3 = getelementptr inbounds %class.NthToggle, %class.NthToggle* %this1, i32 0, i32 2
  store i32 0, i32* %counter3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = bitcast %class.NthToggle* %this1 to %class.Toggle*
  ret %class.Toggle* %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6ToggleD2Ev(%class.Toggle* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Toggle*, align 8
  store %class.Toggle* %this, %class.Toggle** %this.addr, align 8
  %this1 = load %class.Toggle*, %class.Toggle** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6ToggleD0Ev(%class.Toggle* %this) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Toggle*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.Toggle* %this, %class.Toggle** %this.addr, align 8
  %this1 = load %class.Toggle*, %class.Toggle** %this.addr, align 8
  invoke void @_ZN6ToggleD2Ev(%class.Toggle* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.Toggle* %this1 to i8*
  call void @_ZdlPv(i8* %0) #10
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.Toggle* %this1 to i8*
  call void @_ZdlPv(i8* %4) #10
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(16) %class.Toggle* @_ZN6Toggle8activateEv(%class.Toggle* %this) unnamed_addr #6 comdat align 2 {
entry:
  %this.addr = alloca %class.Toggle*, align 8
  store %class.Toggle* %this, %class.Toggle** %this.addr, align 8
  %this1 = load %class.Toggle*, %class.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %class.Toggle, %class.Toggle* %this1, i32 0, i32 1
  %0 = load i8, i8* %state, align 8
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  %state2 = getelementptr inbounds %class.Toggle, %class.Toggle* %this1, i32 0, i32 1
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %state2, align 8
  ret %class.Toggle* %this1
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
