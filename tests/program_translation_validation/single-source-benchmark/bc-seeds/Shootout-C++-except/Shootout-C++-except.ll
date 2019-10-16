; ModuleID = 'Shootout-C++-except/Shootout-C++-except.bc'
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
%class.Lo_exception = type { i64, [8 x i8] }

$_ZN12Lo_exceptionC2Em = comdat any

$_ZN12Hi_exceptionC2Em = comdat any

$__clang_call_terminate = comdat any

$_ZTI12Lo_exception = comdat any

$_ZTI12Hi_exception = comdat any

$_ZTS12Hi_exception = comdat any

$_ZTS12Lo_exception = comdat any

@HI = global i64 0, align 8
@LO = global i64 0, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_except.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZTI12Lo_exception = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTS12Lo_exception, i32 0, i32 0) }, comdat
@_ZTI12Hi_exception = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTS12Hi_exception, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS12Hi_exception = linkonce_odr constant [15 x i8] c"12Hi_exception\00", comdat
@_ZTS12Lo_exception = linkonce_odr constant [15 x i8] c"12Lo_exception\00", comdat
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"We shouldn't get here\0A\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Exceptions: HI=\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"LO=\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_except.cpp() #0 section ".text.startup" {
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

; Function Attrs: noinline uwtable
define void @_Z6blowupm(i64 %num) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %num.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  %rem = urem i64 %0, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = call i8* @__cxa_allocate_exception(i64 16) #2
  %1 = bitcast i8* %exception to %class.Lo_exception*
  %2 = load i64, i64* %num.addr, align 8
  invoke void @_ZN12Lo_exceptionC2Em(%class.Lo_exception* %1, i64 %2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8* }* @_ZTI12Lo_exception to i8*), i8* null) #9
  unreachable

lpad:                                             ; preds = %if.then
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @__cxa_free_exception(i8* %exception) #2
  br label %eh.resume

if.end:                                           ; preds = %entry
  %exception1 = call i8* @__cxa_allocate_exception(i64 16) #2
  %6 = bitcast i8* %exception1 to %class.Lo_exception*
  %7 = load i64, i64* %num.addr, align 8
  invoke void @_ZN12Hi_exceptionC2Em(%class.Lo_exception* %6, i64 %7)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %if.end
  call void @__cxa_throw(i8* %exception1, i8* bitcast ({ i8*, i8* }* @_ZTI12Hi_exception to i8*), i8* null) #9
  unreachable

lpad2:                                            ; preds = %if.end
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  call void @__cxa_free_exception(i8* %exception1) #2
  br label %eh.resume

return:                                           ; No predecessors!
  ret void

eh.resume:                                        ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_allocate_exception(i64)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12Lo_exceptionC2Em(%class.Lo_exception* %this, i64 %_n) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.Lo_exception*, align 8
  %_n.addr = alloca i64, align 8
  store %class.Lo_exception* %this, %class.Lo_exception** %this.addr, align 8
  store i64 %_n, i64* %_n.addr, align 8
  %this1 = load %class.Lo_exception*, %class.Lo_exception** %this.addr, align 8
  %n = getelementptr inbounds %class.Lo_exception, %class.Lo_exception* %this1, i32 0, i32 0
  %0 = load i64, i64* %_n.addr, align 8
  store i64 %0, i64* %n, align 8
  ret void
}

declare void @__cxa_throw(i8*, i8*, i8*)

declare void @__cxa_free_exception(i8*)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN12Hi_exceptionC2Em(%class.Lo_exception* %this, i64 %_n) unnamed_addr #3 comdat align 2 {
entry:
  %this.addr = alloca %class.Lo_exception*, align 8
  %_n.addr = alloca i64, align 8
  store %class.Lo_exception* %this, %class.Lo_exception** %this.addr, align 8
  store i64 %_n, i64* %_n.addr, align 8
  %this1 = load %class.Lo_exception*, %class.Lo_exception** %this.addr, align 8
  %n = getelementptr inbounds %class.Lo_exception, %class.Lo_exception* %this1, i32 0, i32 0
  %0 = load i64, i64* %_n.addr, align 8
  store i64 %0, i64* %n, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_Z11lo_functionm(i64 %num) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %num.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ex = alloca %class.Lo_exception*, align 8
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  invoke void @_Z6blowupm(i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* bitcast ({ i8*, i8* }* @_ZTI12Lo_exception to i8*)
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32, i32* %ehselector.slot, align 4
  %4 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8* }* @_ZTI12Lo_exception to i8*)) #2
  %matches = icmp eq i32 %sel, %4
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8*, i8** %exn.slot, align 8
  %5 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %exn.byref = bitcast i8* %5 to %class.Lo_exception*
  store %class.Lo_exception* %exn.byref, %class.Lo_exception** %ex, align 8
  %6 = load i64, i64* @LO, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* @LO, align 8
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %catch, %invoke.cont
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn1 = load i8*, i8** %exn.slot, align 8
  %sel2 = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn1, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel2, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #4

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

; Function Attrs: noinline uwtable
define void @_Z11hi_functionm(i64 %num) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %num.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ex = alloca %class.Lo_exception*, align 8
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  invoke void @_Z11lo_functionm(i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* bitcast ({ i8*, i8* }* @_ZTI12Hi_exception to i8*)
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %catch.dispatch

catch.dispatch:                                   ; preds = %lpad
  %sel = load i32, i32* %ehselector.slot, align 4
  %4 = call i32 @llvm.eh.typeid.for(i8* bitcast ({ i8*, i8* }* @_ZTI12Hi_exception to i8*)) #2
  %matches = icmp eq i32 %sel, %4
  br i1 %matches, label %catch, label %eh.resume

catch:                                            ; preds = %catch.dispatch
  %exn = load i8*, i8** %exn.slot, align 8
  %5 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %exn.byref = bitcast i8* %5 to %class.Lo_exception*
  store %class.Lo_exception* %exn.byref, %class.Lo_exception** %ex, align 8
  %6 = load i64, i64* @HI, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* @HI, align 8
  call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         ; preds = %catch, %invoke.cont
  ret void

eh.resume:                                        ; preds = %catch.dispatch
  %exn1 = load i8*, i8** %exn.slot, align 8
  %sel2 = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn1, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel2, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: noinline uwtable
define void @_Z13some_functionm(i64 %num) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %num.addr = alloca i64, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i64 %num, i64* %num.addr, align 8
  %0 = load i64, i64* %num.addr, align 8
  invoke void @_Z11hi_functionm(i64 %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br label %try.cont

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  br label %catch

catch:                                            ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %4 = call i8* @__cxa_begin_catch(i8* %exn) #2
  %call = invoke dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cerr, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0))
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  call void @exit(i32 1) #10
  unreachable

lpad1:                                            ; preds = %catch
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  store i8* %6, i8** %exn.slot, align 8
  %7 = extractvalue { i8*, i32 } %5, 1
  store i32 %7, i32* %ehselector.slot, align 4
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont
  ret void

eh.resume:                                        ; preds = %invoke.cont3
  %exn4 = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn4, 0
  %lpad.val5 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  call void @__clang_call_terminate(i8* %9) #10
  unreachable
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8*) #6 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #2
  call void @_ZSt9terminatev() #10
  unreachable
}

declare void @_ZSt9terminatev()

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %NUM = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false5

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #11
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cond.true2, label %cond.false

cond.true2:                                       ; preds = %cond.true
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %4) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true2
  %cond = phi i32 [ 1, %cond.true2 ], [ %call4, %cond.false ]
  br label %cond.end6

cond.false5:                                      ; preds = %entry
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.end
  %cond7 = phi i32 [ %cond, %cond.end ], [ 100000, %cond.false5 ]
  %conv = sext i32 %cond7 to i64
  store i64 %conv, i64* %NUM, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end6
  %5 = load i64, i64* %NUM, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %NUM, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* %NUM, align 8
  call void @_Z13some_functionm(i64 %6)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %7 = load i64, i64* @HI, align 8
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %call8, i64 %7)
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %8 = load i64, i64* @LO, align 8
  %call12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* %call11, i64 %8)
  %call13 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call12, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #8

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"*, i64) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline noreturn nounwind }
attributes #7 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
