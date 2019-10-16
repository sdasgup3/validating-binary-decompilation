; ModuleID = 'sphereflake/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v_t = type { double, double, double }
%"class.std::ios_base::Init" = type { i8 }
%struct.node_t = type { %struct.sphere_t, %struct.sphere_t, i64 }
%struct.sphere_t = type { %struct.v_t, double }
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
%struct.basis_t = type { %struct.v_t, %struct.v_t, %struct.v_t }
%struct.ray_t = type { %struct.v_t, %struct.v_t }

$_ZN3v_tC2Eddd = comdat any

$_ZNK3v_t4normEv = comdat any

$_ZNK3v_t6magsqrEv = comdat any

$_ZNK3v_tmlEd = comdat any

$_ZNK3v_t3dotERKS_ = comdat any

$_ZSt3maxIiERKT_S2_S2_ = comdat any

$_ZN6node_tC2Ev = comdat any

$_ZN5ray_tC2ERK3v_t = comdat any

$_ZN3v_tC2Ev = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZNK3v_tplERKS_ = comdat any

$_ZN5hit_tC2Ev = comdat any

$_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t = comdat any

$_ZNK3v_tngEv = comdat any

$_ZN5ray_tC2ERK3v_tS2_ = comdat any

$_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t = comdat any

$_ZNK8sphere_t9intersectERK5ray_t = comdat any

$_ZNK3v_tmiERKS_ = comdat any

$_ZNK8sphere_t10get_normalERK3v_t = comdat any

$_ZN8sphere_tC2ERK3v_td = comdat any

$_ZN6node_tC2ERK8sphere_tS2_l = comdat any

$_ZN7basis_tC2ERK3v_t = comdat any

$_ZNK3v_t5crossERKS_ = comdat any

$_ZN8sphere_tC2Ev = comdat any

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_sphereflake.cpp, i8* null }]
@_ZL5light = internal global %struct.v_t zeroinitializer, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZL4pool = internal global %struct.node_t* null, align 8
@_ZL3end = internal global %struct.node_t* null, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"P2\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A256\0A\00", align 1
@_ZL4grid = internal constant [4 x [2 x double]] [[2 x double] [double -1.000000e+00, double 0xBFD5555555555555], [2 x double] [double 0x3FD5555555555555, double -1.000000e+00], [2 x double] [double 0xBFD5555555555555, double 1.000000e+00], [2 x double] [double 1.000000e+00, double 0x3FD5555555555555]], align 16

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_sphereflake.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  %tmp = alloca %struct.v_t, align 8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %tmp, double -5.000000e-01, double -6.500000e-01, double 9.000000e-01)
  call void @_ZNK3v_t4normEv(%struct.v_t* sret @_ZL5light, %struct.v_t* %tmp)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3v_tC2Eddd(%struct.v_t* %this, double %a, double %b, double %c) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %a.addr, align 8
  store double %0, double* %x, align 8
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %1 = load double, double* %b.addr, align 8
  store double %1, double* %y, align 8
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %2 = load double, double* %c.addr, align 8
  store double %2, double* %z, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_t4normEv(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %call = call double @_ZNK3v_t6magsqrEv(%struct.v_t* %this1)
  %call2 = call double @_ZL8LLVMsqrtd(double %call)
  %div = fdiv double 1.000000e+00, %call2
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %agg.result, %struct.v_t* %this1, double %div)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK3v_t6magsqrEv(%struct.v_t* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %call = call double @_ZNK3v_t3dotERKS_(%struct.v_t* %this1, %struct.v_t* dereferenceable(24) %this1)
  ret double %call
}

; Function Attrs: noinline uwtable
define internal double @_ZL8LLVMsqrtd(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %xn = alloca double, align 8
  %xk = alloca double, align 8
  %it = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store double 0.000000e+00, double* %xn, align 8
  store double 1.000000e+00, double* %xk, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp oeq double %0, 0x7FF0000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0x7FF0000000000000, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 100, i32* %it, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %1 = load i32, i32* %it, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %it, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %xk, align 8
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* %xk, align 8
  %div = fdiv double %3, %4
  %add = fadd double %2, %div
  %div1 = fdiv double %add, 2.000000e+00
  store double %div1, double* %xn, align 8
  %5 = load double, double* %xn, align 8
  %6 = load double, double* %xk, align 8
  %call = call i32 @_ZL8LLVMdiffdd(double %5, double %6)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %while.body
  %7 = load double, double* %xn, align 8
  store double %7, double* %retval, align 8
  br label %return

if.end4:                                          ; preds = %while.body
  %8 = load double, double* %xn, align 8
  store double %8, double* %xk, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load double, double* %xn, align 8
  store double %9, double* %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %10 = load double, double* %retval, align 8
  ret double %10
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_tmlEd(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this, double %d) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %d.addr = alloca double, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store double %d, double* %d.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load double, double* %d.addr, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %3 = load double, double* %d.addr, align 8
  %mul2 = fmul double %2, %3
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %5 = load double, double* %d.addr, align 8
  %mul3 = fmul double %4, %5
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.result, double %mul, double %mul2, double %mul3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @_ZL8LLVMdiffdd(double %a, double %b) #1 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %d = alloca double, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %b.addr, align 8
  %sub = fsub double %0, %1
  store double %sub, double* %d, align 8
  %2 = load double, double* %d, align 8
  %cmp = fcmp ogt double %2, 1.000000e-12
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load double, double* %d, align 8
  %cmp1 = fcmp olt double %3, -1.000000e-12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %conv = zext i1 %4 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK3v_t3dotERKS_(%struct.v_t* %this, %struct.v_t* dereferenceable(24) %v) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %x2 = getelementptr inbounds %struct.v_t, %struct.v_t* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %mul = fmul double %0, %2
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %y3 = getelementptr inbounds %struct.v_t, %struct.v_t* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %5
  %add = fadd double %mul, %mul4
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %z5 = getelementptr inbounds %struct.v_t, %struct.v_t* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %mul6 = fmul double %6, %8
  %add7 = fadd double %add, %mul6
  ret double %add7
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %lvl = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %ref.tmp1 = alloca i32, align 4
  %count = alloca i32, align 4
  %dec = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %agg.tmp = alloca %struct.v_t, align 8
  %agg.tmp6 = alloca %struct.v_t, align 8
  %tmp = alloca %struct.v_t, align 8
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
  %call = call i32 @atoi(i8* %2) #10
  store i32 %call, i32* %ref.tmp, align 4
  store i32 2, i32* %ref.tmp1, align 4
  %call2 = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ref.tmp, i32* dereferenceable(4) %ref.tmp1)
  %3 = load i32, i32* %call2, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 6, %cond.false ]
  store i32 %cond, i32* %lvl, align 4
  store i32 9, i32* %count, align 4
  %4 = load i32, i32* %lvl, align 4
  store i32 %4, i32* %dec, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %5 = load i32, i32* %dec, align 4
  %dec3 = add nsw i32 %5, -1
  store i32 %dec3, i32* %dec, align 4
  %cmp4 = icmp sgt i32 %dec3, 1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %count, align 4
  %mul = mul nsw i32 %6, 9
  %add = add nsw i32 %mul, 9
  store i32 %add, i32* %count, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  %8 = load i32, i32* %count, align 4
  %9 = sext i32 %8 to i64
  %10 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %9, i64 72)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  %13 = select i1 %11, i64 -1, i64 %12
  %call5 = call i8* @_Znam(i64 %13) #11
  %14 = bitcast i8* %call5 to %struct.node_t*
  %isempty = icmp eq i64 %9, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %while.end
  %arrayctor.end = getelementptr inbounds %struct.node_t, %struct.node_t* %14, i64 %9
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %struct.node_t* [ %14, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN6node_tC2Ev(%struct.node_t* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %struct.node_t, %struct.node_t* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.node_t* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %while.end, %invoke.cont
  store %struct.node_t* %14, %struct.node_t** @_ZL4pool, align 8
  %15 = load %struct.node_t*, %struct.node_t** @_ZL4pool, align 8
  %16 = load i32, i32* %count, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i64 %idx.ext
  store %struct.node_t* %add.ptr, %struct.node_t** @_ZL3end, align 8
  %17 = load %struct.node_t*, %struct.node_t** @_ZL4pool, align 8
  %18 = load i32, i32* %lvl, align 4
  %19 = load i32, i32* %count, align 4
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.tmp, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3v_tC2Eddd(%struct.v_t* %tmp, double 2.500000e-01, double 1.000000e+00, double -5.000000e-01)
  call void @_ZNK3v_t4normEv(%struct.v_t* sret %agg.tmp6, %struct.v_t* %tmp)
  %call7 = call %struct.node_t* @_ZL6createP6node_tii3v_tS1_d(%struct.node_t* %17, i32 %18, i32 %19, %struct.v_t* byval align 8 %agg.tmp, %struct.v_t* byval align 8 %agg.tmp6, double 1.000000e+00)
  %call8 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %call9 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call8, i32 1024)
  %call10 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call11 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call10, i32 1024)
  %call12 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  call void @_ZL10trace_rgssii(i32 1024, i32 1024)
  ret i32 0

lpad:                                             ; preds = %arrayctor.loop
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %exn.slot, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call5) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val13 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val13
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %__a, i32* dereferenceable(4) %__b) #1 comdat {
entry:
  %retval = alloca i32*, align 8
  %__a.addr = alloca i32*, align 8
  %__b.addr = alloca i32*, align 8
  store i32* %__a, i32** %__a.addr, align 8
  store i32* %__b, i32** %__b.addr, align 8
  %0 = load i32*, i32** %__a.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load i32*, i32** %__b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %__b.addr, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32*, i32** %__a.addr, align 8
  store i32* %5, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32*, i32** %retval, align 8
  ret i32* %6
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #7

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6node_tC2Ev(%struct.node_t* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.node_t*, align 8
  store %struct.node_t* %this, %struct.node_t** %this.addr, align 8
  %this1 = load %struct.node_t*, %struct.node_t** %this.addr, align 8
  %bound = getelementptr inbounds %struct.node_t, %struct.node_t* %this1, i32 0, i32 0
  call void @_ZN8sphere_tC2Ev(%struct.sphere_t* %bound)
  %leaf = getelementptr inbounds %struct.node_t, %struct.node_t* %this1, i32 0, i32 1
  call void @_ZN8sphere_tC2Ev(%struct.sphere_t* %leaf)
  ret void
}

; Function Attrs: noinline uwtable
define internal %struct.node_t* @_ZL6createP6node_tii3v_tS1_d(%struct.node_t* %n, i32 %lvl, i32 %dist, %struct.v_t* byval align 8 %c, %struct.v_t* byval align 8 %d, double %r) #0 {
entry:
  %retval = alloca %struct.node_t*, align 8
  %n.addr = alloca %struct.node_t*, align 8
  %lvl.addr = alloca i32, align 4
  %dist.addr = alloca i32, align 4
  %r.addr = alloca double, align 8
  %ref.tmp = alloca %struct.sphere_t, align 8
  %ref.tmp1 = alloca %struct.sphere_t, align 8
  %ref.tmp3 = alloca i32, align 4
  %ref.tmp4 = alloca i32, align 4
  %b = alloca %struct.basis_t, align 8
  %nr = alloca double, align 8
  %daL = alloca double, align 8
  %daU = alloca double, align 8
  %a = alloca double, align 8
  %i = alloca i32, align 4
  %ndir = alloca %struct.v_t, align 8
  %tmp = alloca %struct.v_t, align 8
  %ref.tmp8 = alloca %struct.v_t, align 8
  %tmp10 = alloca %struct.v_t, align 8
  %ref.tmp11 = alloca %struct.v_t, align 8
  %tmp13 = alloca %struct.v_t, align 8
  %agg.tmp = alloca %struct.v_t, align 8
  %ref.tmp15 = alloca %struct.v_t, align 8
  %agg.tmp16 = alloca %struct.v_t, align 8
  %i21 = alloca i32, align 4
  %ndir26 = alloca %struct.v_t, align 8
  %tmp27 = alloca %struct.v_t, align 8
  %ref.tmp28 = alloca %struct.v_t, align 8
  %tmp31 = alloca %struct.v_t, align 8
  %ref.tmp32 = alloca %struct.v_t, align 8
  %tmp35 = alloca %struct.v_t, align 8
  %agg.tmp37 = alloca %struct.v_t, align 8
  %ref.tmp38 = alloca %struct.v_t, align 8
  %agg.tmp40 = alloca %struct.v_t, align 8
  store %struct.node_t* %n, %struct.node_t** %n.addr, align 8
  store i32 %lvl, i32* %lvl.addr, align 4
  store i32 %dist, i32* %dist.addr, align 4
  store double %r, double* %r.addr, align 8
  %0 = load %struct.node_t*, %struct.node_t** %n.addr, align 8
  %1 = bitcast %struct.node_t* %0 to i8*
  %2 = bitcast i8* %1 to %struct.node_t*
  %3 = load double, double* %r.addr, align 8
  %mul = fmul double 2.000000e+00, %3
  call void @_ZN8sphere_tC2ERK3v_td(%struct.sphere_t* %ref.tmp, %struct.v_t* dereferenceable(24) %c, double %mul)
  %4 = load double, double* %r.addr, align 8
  call void @_ZN8sphere_tC2ERK3v_td(%struct.sphere_t* %ref.tmp1, %struct.v_t* dereferenceable(24) %c, double %4)
  %5 = load i32, i32* %lvl.addr, align 4
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %dist.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 1, %cond.false ]
  %conv = sext i32 %cond to i64
  call void @_ZN6node_tC2ERK8sphere_tS2_l(%struct.node_t* %2, %struct.sphere_t* dereferenceable(32) %ref.tmp, %struct.sphere_t* dereferenceable(32) %ref.tmp1, i64 %conv)
  %add.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i64 1
  store %struct.node_t* %add.ptr, %struct.node_t** %n.addr, align 8
  %7 = load i32, i32* %lvl.addr, align 4
  %cmp2 = icmp sle i32 %7, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load %struct.node_t*, %struct.node_t** %n.addr, align 8
  store %struct.node_t* %8, %struct.node_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load i32, i32* %dist.addr, align 4
  %sub = sub nsw i32 %9, 9
  %div = sdiv i32 %sub, 9
  store i32 %div, i32* %ref.tmp3, align 4
  store i32 1, i32* %ref.tmp4, align 4
  %call = call dereferenceable(4) i32* @_ZSt3maxIiERKT_S2_S2_(i32* dereferenceable(4) %ref.tmp3, i32* dereferenceable(4) %ref.tmp4)
  %10 = load i32, i32* %call, align 4
  store i32 %10, i32* %dist.addr, align 4
  call void @_ZN7basis_tC2ERK3v_t(%struct.basis_t* %b, %struct.v_t* dereferenceable(24) %d)
  %11 = load double, double* %r.addr, align 8
  %mul5 = fmul double %11, 1.000000e+00
  %div6 = fdiv double %mul5, 3.000000e+00
  store double %div6, double* %nr, align 8
  store double 0x3FF0C152382D7365, double* %daL, align 8
  store double 0x4000C152382D7365, double* %daU, align 8
  store double 0.000000e+00, double* %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, 6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %tmp, %struct.v_t* %d, double -2.000000e-01)
  %b1 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %b, i32 0, i32 1
  %13 = load double, double* %a, align 8
  %call9 = call double @_ZL7LLVMsind(double %13)
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp8, %struct.v_t* %b1, double %call9)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp10, %struct.v_t* %tmp, %struct.v_t* dereferenceable(24) %ref.tmp8)
  %b2 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %b, i32 0, i32 2
  %14 = load double, double* %a, align 8
  %call12 = call double @_ZL7LLVMcosd(double %14)
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp11, %struct.v_t* %b2, double %call12)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp13, %struct.v_t* %tmp10, %struct.v_t* dereferenceable(24) %ref.tmp11)
  call void @_ZNK3v_t4normEv(%struct.v_t* sret %ndir, %struct.v_t* %tmp13)
  %15 = load %struct.node_t*, %struct.node_t** %n.addr, align 8
  %16 = load i32, i32* %lvl.addr, align 4
  %sub14 = sub nsw i32 %16, 1
  %17 = load i32, i32* %dist.addr, align 4
  %18 = load double, double* %r.addr, align 8
  %19 = load double, double* %nr, align 8
  %add = fadd double %18, %19
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp15, %struct.v_t* %ndir, double %add)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %agg.tmp, %struct.v_t* %c, %struct.v_t* dereferenceable(24) %ref.tmp15)
  %20 = bitcast %struct.v_t* %agg.tmp16 to i8*
  %21 = bitcast %struct.v_t* %ndir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 8, i1 false)
  %22 = load double, double* %nr, align 8
  %call17 = call %struct.node_t* @_ZL6createP6node_tii3v_tS1_d(%struct.node_t* %15, i32 %sub14, i32 %17, %struct.v_t* byval align 8 %agg.tmp, %struct.v_t* byval align 8 %agg.tmp16, double %22)
  store %struct.node_t* %call17, %struct.node_t** %n.addr, align 8
  %23 = load double, double* %a, align 8
  %add18 = fadd double %23, 0x3FF0C152382D7365
  store double %add18, double* %a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load double, double* %a, align 8
  %sub19 = fsub double %25, 0x3FD657184AE74487
  store double %sub19, double* %a, align 8
  store i32 0, i32* %i21, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc43, %for.end
  %26 = load i32, i32* %i21, align 4
  %cmp23 = icmp slt i32 %26, 3
  br i1 %cmp23, label %for.body24, label %for.end45

for.body24:                                       ; preds = %for.cond22
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %tmp27, %struct.v_t* %d, double 6.000000e-01)
  %b129 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %b, i32 0, i32 1
  %27 = load double, double* %a, align 8
  %call30 = call double @_ZL7LLVMsind(double %27)
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp28, %struct.v_t* %b129, double %call30)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp31, %struct.v_t* %tmp27, %struct.v_t* dereferenceable(24) %ref.tmp28)
  %b233 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %b, i32 0, i32 2
  %28 = load double, double* %a, align 8
  %call34 = call double @_ZL7LLVMcosd(double %28)
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp32, %struct.v_t* %b233, double %call34)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp35, %struct.v_t* %tmp31, %struct.v_t* dereferenceable(24) %ref.tmp32)
  call void @_ZNK3v_t4normEv(%struct.v_t* sret %ndir26, %struct.v_t* %tmp35)
  %29 = load %struct.node_t*, %struct.node_t** %n.addr, align 8
  %30 = load i32, i32* %lvl.addr, align 4
  %sub36 = sub nsw i32 %30, 1
  %31 = load i32, i32* %dist.addr, align 4
  %32 = load double, double* %r.addr, align 8
  %33 = load double, double* %nr, align 8
  %add39 = fadd double %32, %33
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp38, %struct.v_t* %ndir26, double %add39)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %agg.tmp37, %struct.v_t* %c, %struct.v_t* dereferenceable(24) %ref.tmp38)
  %34 = bitcast %struct.v_t* %agg.tmp40 to i8*
  %35 = bitcast %struct.v_t* %ndir26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 24, i32 8, i1 false)
  %36 = load double, double* %nr, align 8
  %call41 = call %struct.node_t* @_ZL6createP6node_tii3v_tS1_d(%struct.node_t* %29, i32 %sub36, i32 %31, %struct.v_t* byval align 8 %agg.tmp37, %struct.v_t* byval align 8 %agg.tmp40, double %36)
  store %struct.node_t* %call41, %struct.node_t** %n.addr, align 8
  %37 = load double, double* %a, align 8
  %add42 = fadd double %37, 0x4000C152382D7365
  store double %add42, double* %a, align 8
  br label %for.inc43

for.inc43:                                        ; preds = %for.body24
  %38 = load i32, i32* %i21, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, i32* %i21, align 4
  br label %for.cond22

for.end45:                                        ; preds = %for.cond22
  %39 = load %struct.node_t*, %struct.node_t** %n.addr, align 8
  store %struct.node_t* %39, %struct.node_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end45, %if.then
  %40 = load %struct.node_t*, %struct.node_t** %retval, align 8
  ret %struct.node_t* %40
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #2

; Function Attrs: noinline uwtable
define internal void @_ZL10trace_rgssii(i32 %width, i32 %height) #0 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %w = alloca double, align 8
  %h = alloca double, align 8
  %rcp = alloca double, align 8
  %scale = alloca double, align 8
  %ray = alloca %struct.ray_t, align 8
  %ref.tmp = alloca %struct.v_t, align 8
  %rgss = alloca [4 x %struct.v_t], align 16
  %i = alloca i32, align 4
  %ref.tmp2 = alloca %struct.v_t, align 8
  %scan = alloca %struct.v_t, align 8
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  %g = alloca double, align 8
  %idx = alloca i32, align 4
  %ref.tmp22 = alloca %struct.v_t, align 8
  %tmp = alloca %struct.v_t, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load i32, i32* %width.addr, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, double* %w, align 8
  %1 = load i32, i32* %height.addr, align 4
  %conv1 = sitofp i32 %1 to double
  store double %conv1, double* %h, align 8
  store double 5.000000e-01, double* %rcp, align 8
  store double 6.400000e+01, double* %scale, align 8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %ref.tmp, double 0.000000e+00, double 0.000000e+00, double -4.500000e+00)
  call void @_ZN5ray_tC2ERK3v_t(%struct.ray_t* %ray, %struct.v_t* dereferenceable(24) %ref.tmp)
  %array.begin = getelementptr inbounds [4 x %struct.v_t], [4 x %struct.v_t]* %rgss, i32 0, i32 0
  %arrayctor.end = getelementptr inbounds %struct.v_t, %struct.v_t* %array.begin, i64 4
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %arrayctor.loop, %entry
  %arrayctor.cur = phi %struct.v_t* [ %array.begin, %entry ], [ %arrayctor.next, %arrayctor.loop ]
  call void @_ZN3v_tC2Ev(%struct.v_t* %arrayctor.cur)
  %arrayctor.next = getelementptr inbounds %struct.v_t, %struct.v_t* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.v_t* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %arrayctor.loop
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %arrayctor.cont
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x [2 x double]], [4 x [2 x double]]* @_ZL4grid, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx, i64 0, i64 0
  %4 = load double, double* %arrayidx3, align 16
  %mul = fmul double %4, 5.000000e-01
  %5 = load double, double* %w, align 8
  %div = fdiv double %5, 2.000000e+00
  %sub = fsub double %mul, %div
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [4 x [2 x double]], [4 x [2 x double]]* @_ZL4grid, i64 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx5, i64 0, i64 1
  %7 = load double, double* %arrayidx6, align 8
  %mul7 = fmul double %7, 5.000000e-01
  %8 = load double, double* %h, align 8
  %div8 = fdiv double %8, 2.000000e+00
  %sub9 = fsub double %mul7, %div8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %ref.tmp2, double %sub, double %sub9, double 0.000000e+00)
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [4 x %struct.v_t], [4 x %struct.v_t]* %rgss, i64 0, i64 %idxprom10
  %10 = bitcast %struct.v_t* %arrayidx11 to i8*
  %11 = bitcast %struct.v_t* %ref.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 24, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load double, double* %w, align 8
  %sub12 = fsub double %13, 1.000000e+00
  %call = call dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %w, double* dereferenceable(8) %h)
  %14 = load double, double* %call, align 8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %scan, double 0.000000e+00, double %sub12, double %14)
  %15 = load i32, i32* %height.addr, align 4
  store i32 %15, i32* %i13, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc38, %for.end
  %16 = load i32, i32* %i13, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %for.body15, label %for.end40

for.body15:                                       ; preds = %for.cond14
  %17 = load i32, i32* %width.addr, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc34, %for.body15
  %18 = load i32, i32* %j, align 4
  %tobool17 = icmp ne i32 %18, 0
  br i1 %tobool17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  store double 0.000000e+00, double* %g, align 8
  store i32 0, i32* %idx, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.body18
  %19 = load i32, i32* %idx, align 4
  %cmp20 = icmp slt i32 %19, 4
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %20 = load i32, i32* %idx, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [4 x %struct.v_t], [4 x %struct.v_t]* %rgss, i64 0, i64 %idxprom23
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp, %struct.v_t* %scan, %struct.v_t* dereferenceable(24) %arrayidx24)
  call void @_ZNK3v_t4normEv(%struct.v_t* sret %ref.tmp22, %struct.v_t* %tmp)
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %ray, i32 0, i32 1
  %21 = bitcast %struct.v_t* %d to i8*
  %22 = bitcast %struct.v_t* %ref.tmp22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 24, i32 8, i1 false)
  %23 = load %struct.node_t*, %struct.node_t** @_ZL4pool, align 8
  %call25 = call double @_ZL9ray_tracePK6node_tRK5ray_t(%struct.node_t* %23, %struct.ray_t* dereferenceable(48) %ray)
  %24 = load double, double* %g, align 8
  %add = fadd double %24, %call25
  store double %add, double* %g, align 8
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %25 = load i32, i32* %idx, align 4
  %inc27 = add nsw i32 %25, 1
  store i32 %inc27, i32* %idx, align 4
  br label %for.cond19

for.end28:                                        ; preds = %for.cond19
  %26 = load double, double* %g, align 8
  %mul29 = fmul double 6.400000e+01, %26
  %conv30 = fptosi double %mul29 to i32
  %call31 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %conv30)
  %call32 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) %call31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %scan, i32 0, i32 0
  %27 = load double, double* %x, align 8
  %add33 = fadd double %27, 1.000000e+00
  store double %add33, double* %x, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.end28
  %28 = load i32, i32* %j, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond16

for.end35:                                        ; preds = %for.cond16
  %x36 = getelementptr inbounds %struct.v_t, %struct.v_t* %scan, i32 0, i32 0
  store double 0.000000e+00, double* %x36, align 8
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %scan, i32 0, i32 1
  %29 = load double, double* %y, align 8
  %sub37 = fsub double %29, 1.000000e+00
  store double %sub37, double* %y, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.end35
  %30 = load i32, i32* %i13, align 4
  %dec39 = add nsw i32 %30, -1
  store i32 %dec39, i32* %i13, align 4
  br label %for.cond14

for.end40:                                        ; preds = %for.cond14
  %call41 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #8

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5ray_tC2ERK3v_t(%struct.ray_t* %this, %struct.v_t* dereferenceable(24) %v) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.ray_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  store %struct.ray_t* %this, %struct.ray_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.ray_t*, %struct.ray_t** %this.addr, align 8
  %o = getelementptr inbounds %struct.ray_t, %struct.ray_t* %this1, i32 0, i32 0
  %0 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %1 = bitcast %struct.v_t* %o to i8*
  %2 = bitcast %struct.v_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %this1, i32 0, i32 1
  call void @_ZN3v_tC2Ev(%struct.v_t* %d)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3v_tC2Ev(%struct.v_t* %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* dereferenceable(8) %__a, double* dereferenceable(8) %__b) #1 comdat {
entry:
  %retval = alloca double*, align 8
  %__a.addr = alloca double*, align 8
  %__b.addr = alloca double*, align 8
  store double* %__a, double** %__a.addr, align 8
  store double* %__b, double** %__b.addr, align 8
  %0 = load double*, double** %__a.addr, align 8
  %1 = load double, double* %0, align 8
  %2 = load double*, double** %__b.addr, align 8
  %3 = load double, double* %2, align 8
  %cmp = fcmp olt double %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double*, double** %__b.addr, align 8
  store double* %4, double** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load double*, double** %__a.addr, align 8
  store double* %5, double** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load double*, double** %retval, align 8
  ret double* %6
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_tplERKS_(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this, %struct.v_t* dereferenceable(24) %v) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %x2 = getelementptr inbounds %struct.v_t, %struct.v_t* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %add = fadd double %0, %2
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %y3 = getelementptr inbounds %struct.v_t, %struct.v_t* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %add4 = fadd double %3, %5
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %z5 = getelementptr inbounds %struct.v_t, %struct.v_t* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %add6 = fadd double %6, %8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.result, double %add, double %add4, double %add6)
  ret void
}

; Function Attrs: noinline uwtable
define internal double @_ZL9ray_tracePK6node_tRK5ray_t(%struct.node_t* %scene, %struct.ray_t* dereferenceable(48) %ray) #0 {
entry:
  %retval = alloca double, align 8
  %scene.addr = alloca %struct.node_t*, align 8
  %ray.addr = alloca %struct.ray_t*, align 8
  %hit = alloca %struct.sphere_t, align 8
  %diffuse = alloca double, align 8
  %sray = alloca %struct.ray_t, align 8
  %ref.tmp = alloca %struct.v_t, align 8
  %ref.tmp2 = alloca %struct.v_t, align 8
  %tmp = alloca %struct.v_t, align 8
  %ref.tmp4 = alloca %struct.v_t, align 8
  %ref.tmp6 = alloca %struct.v_t, align 8
  %shit = alloca %struct.sphere_t, align 8
  store %struct.node_t* %scene, %struct.node_t** %scene.addr, align 8
  store %struct.ray_t* %ray, %struct.ray_t** %ray.addr, align 8
  call void @_ZN5hit_tC2Ev(%struct.sphere_t* %hit)
  %0 = load %struct.node_t*, %struct.node_t** %scene.addr, align 8
  %1 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  call void @_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t(%struct.ray_t* dereferenceable(48) %1, %struct.sphere_t* dereferenceable(32) %hit)
  %t = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %hit, i32 0, i32 1
  %2 = load double, double* %t, align 8
  %cmp = fcmp oeq double %2, 0x7FF0000000000000
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %n = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %hit, i32 0, i32 0
  %call = call double @_ZNK3v_t3dotERKS_(%struct.v_t* %n, %struct.v_t* dereferenceable(24) @_ZL5light)
  %sub = fsub double -0.000000e+00, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %sub, %cond.false ]
  store double %cond, double* %diffuse, align 8
  %3 = load double, double* %diffuse, align 8
  %cmp1 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %o = getelementptr inbounds %struct.ray_t, %struct.ray_t* %4, i32 0, i32 0
  %5 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %5, i32 0, i32 1
  %t3 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %hit, i32 0, i32 1
  %6 = load double, double* %t3, align 8
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp2, %struct.v_t* %d, double %6)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %tmp, %struct.v_t* %o, %struct.v_t* dereferenceable(24) %ref.tmp2)
  %n5 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %hit, i32 0, i32 0
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp4, %struct.v_t* %n5, double 1.000000e-12)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %ref.tmp, %struct.v_t* %tmp, %struct.v_t* dereferenceable(24) %ref.tmp4)
  call void @_ZNK3v_tngEv(%struct.v_t* sret %ref.tmp6, %struct.v_t* @_ZL5light)
  call void @_ZN5ray_tC2ERK3v_tS2_(%struct.ray_t* %sray, %struct.v_t* dereferenceable(24) %ref.tmp, %struct.v_t* dereferenceable(24) %ref.tmp6)
  call void @_ZN5hit_tC2Ev(%struct.sphere_t* %shit)
  %7 = load %struct.node_t*, %struct.node_t** %scene.addr, align 8
  call void @_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t(%struct.ray_t* dereferenceable(48) %sray, %struct.sphere_t* dereferenceable(32) %shit)
  %t8 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %shit, i32 0, i32 1
  %8 = load double, double* %t8, align 8
  %cmp9 = fcmp oeq double %8, 0x7FF0000000000000
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %if.end
  %9 = load double, double* %diffuse, align 8
  br label %cond.end12

cond.false11:                                     ; preds = %if.end
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi double [ %9, %cond.true10 ], [ 0.000000e+00, %cond.false11 ]
  store double %cond13, double* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end12, %if.then
  %10 = load double, double* %retval, align 8
  ret double %10
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #2

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #2

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN5hit_tC2Ev(%struct.sphere_t* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.sphere_t*, align 8
  store %struct.sphere_t* %this, %struct.sphere_t** %this.addr, align 8
  %this1 = load %struct.sphere_t*, %struct.sphere_t** %this.addr, align 8
  %n = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 0
  call void @_ZN3v_tC2Eddd(%struct.v_t* %n, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %t = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 1
  store double 0x7FF0000000000000, double* %t, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6node_t9intersectILb0EEEvRK5ray_tR5hit_t(%struct.ray_t* dereferenceable(48) %ray, %struct.sphere_t* dereferenceable(32) %hit) #0 comdat align 2 {
entry:
  %ray.addr = alloca %struct.ray_t*, align 8
  %hit.addr = alloca %struct.sphere_t*, align 8
  %p = alloca %struct.node_t*, align 8
  %t2 = alloca double, align 8
  %ref.tmp = alloca %struct.v_t, align 8
  %ref.tmp9 = alloca %struct.v_t, align 8
  %ref.tmp10 = alloca %struct.v_t, align 8
  store %struct.ray_t* %ray, %struct.ray_t** %ray.addr, align 8
  store %struct.sphere_t* %hit, %struct.sphere_t** %hit.addr, align 8
  %0 = load %struct.node_t*, %struct.node_t** @_ZL4pool, align 8
  store %struct.node_t* %0, %struct.node_t** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %entry
  %1 = load %struct.node_t*, %struct.node_t** %p, align 8
  %2 = load %struct.node_t*, %struct.node_t** @_ZL3end, align 8
  %cmp = icmp ult %struct.node_t* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node_t*, %struct.node_t** %p, align 8
  %bound = getelementptr inbounds %struct.node_t, %struct.node_t* %3, i32 0, i32 0
  %4 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %call = call double @_ZNK8sphere_t9intersectERK5ray_t(%struct.sphere_t* %bound, %struct.ray_t* dereferenceable(48) %4)
  %5 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %5, i32 0, i32 1
  %6 = load double, double* %t, align 8
  %cmp1 = fcmp oge double %call, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.node_t*, %struct.node_t** %p, align 8
  %diff = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 2
  %8 = load i64, i64* %diff, align 8
  %9 = load %struct.node_t*, %struct.node_t** %p, align 8
  %add.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i64 %8
  store %struct.node_t* %add.ptr, %struct.node_t** %p, align 8
  br label %if.end11

if.else:                                          ; preds = %while.body
  %10 = load %struct.node_t*, %struct.node_t** %p, align 8
  %leaf = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 1
  %11 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %call3 = call double @_ZNK8sphere_t9intersectERK5ray_t(%struct.sphere_t* %leaf, %struct.ray_t* dereferenceable(48) %11)
  store double %call3, double* %t2, align 8
  %12 = load double, double* %t2, align 8
  %13 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t4 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %13, i32 0, i32 1
  %14 = load double, double* %t4, align 8
  %cmp5 = fcmp olt double %12, %14
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %15 = load double, double* %t2, align 8
  %16 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t7 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %16, i32 0, i32 1
  store double %15, double* %t7, align 8
  %17 = load %struct.node_t*, %struct.node_t** %p, align 8
  %leaf8 = getelementptr inbounds %struct.node_t, %struct.node_t* %17, i32 0, i32 1
  %18 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %o = getelementptr inbounds %struct.ray_t, %struct.ray_t* %18, i32 0, i32 0
  %19 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %19, i32 0, i32 1
  %20 = load double, double* %t2, align 8
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %ref.tmp10, %struct.v_t* %d, double %20)
  call void @_ZNK3v_tplERKS_(%struct.v_t* sret %ref.tmp9, %struct.v_t* %o, %struct.v_t* dereferenceable(24) %ref.tmp10)
  call void @_ZNK8sphere_t10get_normalERK3v_t(%struct.v_t* sret %ref.tmp, %struct.sphere_t* %leaf8, %struct.v_t* dereferenceable(24) %ref.tmp9)
  %21 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %n = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %21, i32 0, i32 0
  %22 = bitcast %struct.v_t* %n to i8*
  %23 = bitcast %struct.v_t* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 24, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  %24 = load %struct.node_t*, %struct.node_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %24, i32 1
  store %struct.node_t* %incdec.ptr, %struct.node_t** %p, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_tngEv(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %0
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %sub2 = fsub double -0.000000e+00, %1
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %sub3 = fsub double -0.000000e+00, %2
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.result, double %sub, double %sub2, double %sub3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN5ray_tC2ERK3v_tS2_(%struct.ray_t* %this, %struct.v_t* dereferenceable(24) %v, %struct.v_t* dereferenceable(24) %w) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.ray_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  %w.addr = alloca %struct.v_t*, align 8
  store %struct.ray_t* %this, %struct.ray_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  store %struct.v_t* %w, %struct.v_t** %w.addr, align 8
  %this1 = load %struct.ray_t*, %struct.ray_t** %this.addr, align 8
  %o = getelementptr inbounds %struct.ray_t, %struct.ray_t* %this1, i32 0, i32 0
  %0 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %1 = bitcast %struct.v_t* %o to i8*
  %2 = bitcast %struct.v_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %this1, i32 0, i32 1
  %3 = load %struct.v_t*, %struct.v_t** %w.addr, align 8
  %4 = bitcast %struct.v_t* %d to i8*
  %5 = bitcast %struct.v_t* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6node_t9intersectILb1EEEvRK5ray_tR5hit_t(%struct.ray_t* dereferenceable(48) %ray, %struct.sphere_t* dereferenceable(32) %hit) #0 comdat align 2 {
entry:
  %ray.addr = alloca %struct.ray_t*, align 8
  %hit.addr = alloca %struct.sphere_t*, align 8
  %p = alloca %struct.node_t*, align 8
  %t2 = alloca double, align 8
  store %struct.ray_t* %ray, %struct.ray_t** %ray.addr, align 8
  store %struct.sphere_t* %hit, %struct.sphere_t** %hit.addr, align 8
  %0 = load %struct.node_t*, %struct.node_t** @_ZL4pool, align 8
  store %struct.node_t* %0, %struct.node_t** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %1 = load %struct.node_t*, %struct.node_t** %p, align 8
  %2 = load %struct.node_t*, %struct.node_t** @_ZL3end, align 8
  %cmp = icmp ult %struct.node_t* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.node_t*, %struct.node_t** %p, align 8
  %bound = getelementptr inbounds %struct.node_t, %struct.node_t* %3, i32 0, i32 0
  %4 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %call = call double @_ZNK8sphere_t9intersectERK5ray_t(%struct.sphere_t* %bound, %struct.ray_t* dereferenceable(48) %4)
  %5 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %5, i32 0, i32 1
  %6 = load double, double* %t, align 8
  %cmp1 = fcmp oge double %call, %6
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.node_t*, %struct.node_t** %p, align 8
  %diff = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 2
  %8 = load i64, i64* %diff, align 8
  %9 = load %struct.node_t*, %struct.node_t** %p, align 8
  %add.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i64 %8
  store %struct.node_t* %add.ptr, %struct.node_t** %p, align 8
  br label %if.end8

if.else:                                          ; preds = %while.body
  %10 = load %struct.node_t*, %struct.node_t** %p, align 8
  %leaf = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 1
  %11 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %call3 = call double @_ZNK8sphere_t9intersectERK5ray_t(%struct.sphere_t* %leaf, %struct.ray_t* dereferenceable(48) %11)
  store double %call3, double* %t2, align 8
  %12 = load double, double* %t2, align 8
  %13 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t4 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %13, i32 0, i32 1
  %14 = load double, double* %t4, align 8
  %cmp5 = fcmp olt double %12, %14
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %15 = load double, double* %t2, align 8
  %16 = load %struct.sphere_t*, %struct.sphere_t** %hit.addr, align 8
  %t7 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %16, i32 0, i32 1
  store double %15, double* %t7, align 8
  br label %while.end

if.end:                                           ; preds = %if.else
  %17 = load %struct.node_t*, %struct.node_t** %p, align 8
  %incdec.ptr = getelementptr inbounds %struct.node_t, %struct.node_t* %17, i32 1
  store %struct.node_t* %incdec.ptr, %struct.node_t** %p, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.then6, %while.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK8sphere_t9intersectERK5ray_t(%struct.sphere_t* %this, %struct.ray_t* dereferenceable(48) %ray) #0 comdat align 2 {
entry:
  %retval = alloca double, align 8
  %this.addr = alloca %struct.sphere_t*, align 8
  %ray.addr = alloca %struct.ray_t*, align 8
  %v = alloca %struct.v_t, align 8
  %b = alloca double, align 8
  %disc = alloca double, align 8
  %d6 = alloca double, align 8
  %t2 = alloca double, align 8
  %t1 = alloca double, align 8
  store %struct.sphere_t* %this, %struct.sphere_t** %this.addr, align 8
  store %struct.ray_t* %ray, %struct.ray_t** %ray.addr, align 8
  %this1 = load %struct.sphere_t*, %struct.sphere_t** %this.addr, align 8
  %o = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 0
  %0 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %o2 = getelementptr inbounds %struct.ray_t, %struct.ray_t* %0, i32 0, i32 0
  call void @_ZNK3v_tmiERKS_(%struct.v_t* sret %v, %struct.v_t* %o, %struct.v_t* dereferenceable(24) %o2)
  %1 = load %struct.ray_t*, %struct.ray_t** %ray.addr, align 8
  %d = getelementptr inbounds %struct.ray_t, %struct.ray_t* %1, i32 0, i32 1
  %call = call double @_ZNK3v_t3dotERKS_(%struct.v_t* %d, %struct.v_t* dereferenceable(24) %v)
  store double %call, double* %b, align 8
  %2 = load double, double* %b, align 8
  %3 = load double, double* %b, align 8
  %mul = fmul double %2, %3
  %call3 = call double @_ZNK3v_t6magsqrEv(%struct.v_t* %v)
  %sub = fsub double %mul, %call3
  %r = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 1
  %4 = load double, double* %r, align 8
  %r4 = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 1
  %5 = load double, double* %r4, align 8
  %mul5 = fmul double %4, %5
  %add = fadd double %sub, %mul5
  store double %add, double* %disc, align 8
  %6 = load double, double* %disc, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0x7FF0000000000000, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load double, double* %disc, align 8
  %call7 = call double @_ZL8LLVMsqrtd(double %7)
  store double %call7, double* %d6, align 8
  %8 = load double, double* %b, align 8
  %9 = load double, double* %d6, align 8
  %add8 = fadd double %8, %9
  store double %add8, double* %t2, align 8
  %10 = load double, double* %b, align 8
  %11 = load double, double* %d6, align 8
  %sub9 = fsub double %10, %11
  store double %sub9, double* %t1, align 8
  %12 = load double, double* %t2, align 8
  %cmp10 = fcmp olt double %12, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  store double 0x7FF0000000000000, double* %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load double, double* %t1, align 8
  %cmp12 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %14 = load double, double* %t1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %15 = load double, double* %t2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ %15, %cond.false ]
  store double %cond, double* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end, %if.then11, %if.then
  %16 = load double, double* %retval, align 8
  ret double %16
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_tmiERKS_(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this, %struct.v_t* dereferenceable(24) %v) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %x2 = getelementptr inbounds %struct.v_t, %struct.v_t* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %sub = fsub double %0, %2
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %y3 = getelementptr inbounds %struct.v_t, %struct.v_t* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %sub4 = fsub double %3, %5
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %z5 = getelementptr inbounds %struct.v_t, %struct.v_t* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %sub6 = fsub double %6, %8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.result, double %sub, double %sub4, double %sub6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK8sphere_t10get_normalERK3v_t(%struct.v_t* noalias sret %agg.result, %struct.sphere_t* %this, %struct.v_t* dereferenceable(24) %v) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.sphere_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  %tmp = alloca %struct.v_t, align 8
  store %struct.sphere_t* %this, %struct.sphere_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.sphere_t*, %struct.sphere_t** %this.addr, align 8
  %0 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %o = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 0
  call void @_ZNK3v_tmiERKS_(%struct.v_t* sret %tmp, %struct.v_t* %0, %struct.v_t* dereferenceable(24) %o)
  %r = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 1
  %1 = load double, double* %r, align 8
  %div = fdiv double 1.000000e+00, %1
  call void @_ZNK3v_tmlEd(%struct.v_t* sret %agg.result, %struct.v_t* %tmp, double %div)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8sphere_tC2ERK3v_td(%struct.sphere_t* %this, %struct.v_t* dereferenceable(24) %v, double %d) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.sphere_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  %d.addr = alloca double, align 8
  store %struct.sphere_t* %this, %struct.sphere_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  store double %d, double* %d.addr, align 8
  %this1 = load %struct.sphere_t*, %struct.sphere_t** %this.addr, align 8
  %o = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 0
  %0 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %1 = bitcast %struct.v_t* %o to i8*
  %2 = bitcast %struct.v_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %r = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 1
  %3 = load double, double* %d.addr, align 8
  store double %3, double* %r, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6node_tC2ERK8sphere_tS2_l(%struct.node_t* %this, %struct.sphere_t* dereferenceable(32) %b, %struct.sphere_t* dereferenceable(32) %l, i64 %jump) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.node_t*, align 8
  %b.addr = alloca %struct.sphere_t*, align 8
  %l.addr = alloca %struct.sphere_t*, align 8
  %jump.addr = alloca i64, align 8
  store %struct.node_t* %this, %struct.node_t** %this.addr, align 8
  store %struct.sphere_t* %b, %struct.sphere_t** %b.addr, align 8
  store %struct.sphere_t* %l, %struct.sphere_t** %l.addr, align 8
  store i64 %jump, i64* %jump.addr, align 8
  %this1 = load %struct.node_t*, %struct.node_t** %this.addr, align 8
  %bound = getelementptr inbounds %struct.node_t, %struct.node_t* %this1, i32 0, i32 0
  %0 = load %struct.sphere_t*, %struct.sphere_t** %b.addr, align 8
  %1 = bitcast %struct.sphere_t* %bound to i8*
  %2 = bitcast %struct.sphere_t* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false)
  %leaf = getelementptr inbounds %struct.node_t, %struct.node_t* %this1, i32 0, i32 1
  %3 = load %struct.sphere_t*, %struct.sphere_t** %l.addr, align 8
  %4 = bitcast %struct.sphere_t* %leaf to i8*
  %5 = bitcast %struct.sphere_t* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %diff = getelementptr inbounds %struct.node_t, %struct.node_t* %this1, i32 0, i32 2
  %6 = load i64, i64* %jump.addr, align 8
  store i64 %6, i64* %diff, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN7basis_tC2ERK3v_t(%struct.basis_t* %this, %struct.v_t* dereferenceable(24) %v) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.basis_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  %n = alloca %struct.v_t, align 8
  %ref.tmp = alloca %struct.v_t, align 8
  %ref.tmp67 = alloca %struct.v_t, align 8
  %ref.tmp71 = alloca %struct.v_t, align 8
  store %struct.basis_t* %this, %struct.basis_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.basis_t*, %struct.basis_t** %this.addr, align 8
  %up = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 0
  call void @_ZN3v_tC2Ev(%struct.v_t* %up)
  %b1 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  call void @_ZN3v_tC2Ev(%struct.v_t* %b1)
  %b2 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 2
  call void @_ZN3v_tC2Ev(%struct.v_t* %b2)
  %0 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  call void @_ZNK3v_t4normEv(%struct.v_t* sret %n, %struct.v_t* %0)
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %mul = fmul double %1, %2
  %cmp = fcmp une double %mul, 1.000000e+00
  %conv = zext i1 %cmp to i32
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %4 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %4
  %cmp5 = fcmp une double %mul4, 1.000000e+00
  %conv6 = zext i1 %cmp5 to i32
  %and = and i32 %conv, %conv6
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %z7 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %6 = load double, double* %z7, align 8
  %mul8 = fmul double %5, %6
  %cmp9 = fcmp une double %mul8, 1.000000e+00
  %conv10 = zext i1 %cmp9 to i32
  %and11 = and i32 %and, %conv10
  %tobool = icmp ne i32 %and11, 0
  br i1 %tobool, label %if.then, label %if.else60

if.then:                                          ; preds = %entry
  %b112 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %7 = bitcast %struct.v_t* %b112 to i8*
  %8 = bitcast %struct.v_t* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  %y13 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %9 = load double, double* %y13, align 8
  %y14 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %10 = load double, double* %y14, align 8
  %mul15 = fmul double %9, %10
  %x16 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %11 = load double, double* %x16, align 8
  %x17 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %12 = load double, double* %x17, align 8
  %mul18 = fmul double %11, %12
  %cmp19 = fcmp ogt double %mul15, %mul18
  br i1 %cmp19, label %if.then20, label %if.else38

if.then20:                                        ; preds = %if.then
  %y21 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %13 = load double, double* %y21, align 8
  %y22 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %14 = load double, double* %y22, align 8
  %mul23 = fmul double %13, %14
  %z24 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %15 = load double, double* %z24, align 8
  %z25 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %16 = load double, double* %z25, align 8
  %mul26 = fmul double %15, %16
  %cmp27 = fcmp ogt double %mul23, %mul26
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then20
  %b129 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.v_t, %struct.v_t* %b129, i32 0, i32 1
  %17 = load double, double* %y30, align 8
  %sub = fsub double -0.000000e+00, %17
  %b131 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.v_t, %struct.v_t* %b131, i32 0, i32 1
  store double %sub, double* %y32, align 8
  br label %if.end

if.else:                                          ; preds = %if.then20
  %b133 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %z34 = getelementptr inbounds %struct.v_t, %struct.v_t* %b133, i32 0, i32 2
  %18 = load double, double* %z34, align 8
  %sub35 = fsub double -0.000000e+00, %18
  %b136 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %z37 = getelementptr inbounds %struct.v_t, %struct.v_t* %b136, i32 0, i32 2
  store double %sub35, double* %z37, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then28
  br label %if.end59

if.else38:                                        ; preds = %if.then
  %z39 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %19 = load double, double* %z39, align 8
  %z40 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %20 = load double, double* %z40, align 8
  %mul41 = fmul double %19, %20
  %x42 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %21 = load double, double* %x42, align 8
  %x43 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %22 = load double, double* %x43, align 8
  %mul44 = fmul double %21, %22
  %cmp45 = fcmp ogt double %mul41, %mul44
  br i1 %cmp45, label %if.then46, label %if.else52

if.then46:                                        ; preds = %if.else38
  %b147 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %z48 = getelementptr inbounds %struct.v_t, %struct.v_t* %b147, i32 0, i32 2
  %23 = load double, double* %z48, align 8
  %sub49 = fsub double -0.000000e+00, %23
  %b150 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %z51 = getelementptr inbounds %struct.v_t, %struct.v_t* %b150, i32 0, i32 2
  store double %sub49, double* %z51, align 8
  br label %if.end58

if.else52:                                        ; preds = %if.else38
  %b153 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.v_t, %struct.v_t* %b153, i32 0, i32 0
  %24 = load double, double* %x54, align 8
  %sub55 = fsub double -0.000000e+00, %24
  %b156 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %x57 = getelementptr inbounds %struct.v_t, %struct.v_t* %b156, i32 0, i32 0
  store double %sub55, double* %x57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then46
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end
  br label %if.end65

if.else60:                                        ; preds = %entry
  %z61 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 2
  %25 = load double, double* %z61, align 8
  %x62 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 0
  %26 = load double, double* %x62, align 8
  %y63 = getelementptr inbounds %struct.v_t, %struct.v_t* %n, i32 0, i32 1
  %27 = load double, double* %y63, align 8
  call void @_ZN3v_tC2Eddd(%struct.v_t* %ref.tmp, double %25, double %26, double %27)
  %b164 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %28 = bitcast %struct.v_t* %b164 to i8*
  %29 = bitcast %struct.v_t* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 8, i1 false)
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.end59
  %up66 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 0
  %30 = bitcast %struct.v_t* %up66 to i8*
  %31 = bitcast %struct.v_t* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false)
  %up68 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 0
  %b169 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  call void @_ZNK3v_t5crossERKS_(%struct.v_t* sret %ref.tmp67, %struct.v_t* %up68, %struct.v_t* dereferenceable(24) %b169)
  %b270 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 2
  %32 = bitcast %struct.v_t* %b270 to i8*
  %33 = bitcast %struct.v_t* %ref.tmp67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 8, i1 false)
  %up72 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 0
  %b273 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 2
  call void @_ZNK3v_t5crossERKS_(%struct.v_t* sret %ref.tmp71, %struct.v_t* %up72, %struct.v_t* dereferenceable(24) %b273)
  %b174 = getelementptr inbounds %struct.basis_t, %struct.basis_t* %this1, i32 0, i32 1
  %34 = bitcast %struct.v_t* %b174 to i8*
  %35 = bitcast %struct.v_t* %ref.tmp71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define internal double @_ZL7LLVMsind(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %sign = alloca double, align 8
  %f3 = alloca double, align 8
  %f5 = alloca double, align 8
  store double %d, double* %d.addr, align 8
  store double 1.000000e+00, double* %sign, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, double* %d.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double, double* %d.addr, align 8
  %add = fadd double %1, 0x401921FB54411744
  store double %add, double* %d.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %2 = load double, double* %d.addr, align 8
  %cmp2 = fcmp ogt double %2, 0x401921FB54411744
  br i1 %cmp2, label %while.body3, label %while.end4

while.body3:                                      ; preds = %while.cond1
  %3 = load double, double* %d.addr, align 8
  %sub = fsub double %3, 0x401921FB54411744
  store double %sub, double* %d.addr, align 8
  br label %while.cond1

while.end4:                                       ; preds = %while.cond1
  %4 = load double, double* %d.addr, align 8
  %cmp5 = fcmp ogt double %4, 0x4012D97C7F713E20
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end4
  %5 = load double, double* %d.addr, align 8
  %sub6 = fsub double 0x401921FB54411744, %5
  store double %sub6, double* %d.addr, align 8
  store double -1.000000e+00, double* %sign, align 8
  br label %if.end15

if.else:                                          ; preds = %while.end4
  %6 = load double, double* %d.addr, align 8
  %cmp7 = fcmp ogt double %6, 0x400921FB5496FD7F
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %7 = load double, double* %d.addr, align 8
  %sub9 = fsub double %7, 0x400921FB5496FD7F
  store double %sub9, double* %d.addr, align 8
  store double -1.000000e+00, double* %sign, align 8
  br label %if.end14

if.else10:                                        ; preds = %if.else
  %8 = load double, double* %d.addr, align 8
  %cmp11 = fcmp ogt double %8, 0x3FF921FB54524550
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else10
  %9 = load double, double* %d.addr, align 8
  %sub13 = fsub double 0x400921FB5496FD7F, %9
  store double %sub13, double* %d.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %10 = load double, double* %d.addr, align 8
  %call = call double @_ZL7LLVMpowdi(double %10, i32 3)
  %div = fdiv double %call, 6.000000e+00
  store double %div, double* %f3, align 8
  %11 = load double, double* %d.addr, align 8
  %call16 = call double @_ZL7LLVMpowdi(double %11, i32 5)
  %div17 = fdiv double %call16, 1.200000e+02
  store double %div17, double* %f5, align 8
  %12 = load double, double* %sign, align 8
  %13 = load double, double* %d.addr, align 8
  %14 = load double, double* %f3, align 8
  %sub18 = fsub double %13, %14
  %15 = load double, double* %f5, align 8
  %add19 = fadd double %sub18, %15
  %mul = fmul double %12, %add19
  store double %mul, double* %d.addr, align 8
  %16 = load double, double* %d.addr, align 8
  %cmp20 = fcmp ogt double %16, 1.000000e+00
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  store double 1.000000e+00, double* %d.addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end15
  %17 = load double, double* %d.addr, align 8
  %cmp23 = fcmp olt double %17, -1.000000e+00
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store double -1.000000e+00, double* %d.addr, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %18 = load double, double* %d.addr, align 8
  ret double %18
}

; Function Attrs: noinline uwtable
define internal double @_ZL7LLVMcosd(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8
  %0 = load double, double* %d.addr, align 8
  %add = fadd double %0, 0x3FF921FB54524550
  %call = call double @_ZL7LLVMsind(double %add)
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define internal double @_ZL7LLVMpowdi(double %d, i32 %n) #1 {
entry:
  %retval = alloca double, align 8
  %d.addr = alloca double, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca double, align 8
  store double %d, double* %d.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load double, double* %d.addr, align 8
  store double %0, double* %res, align 8
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double, double* %d.addr, align 8
  %5 = load double, double* %res, align 8
  %mul = fmul double %5, %4
  store double %mul, double* %res, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load double, double* %res, align 8
  store double %7, double* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load double, double* %retval, align 8
  ret double %8
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3v_t5crossERKS_(%struct.v_t* noalias sret %agg.result, %struct.v_t* %this, %struct.v_t* dereferenceable(24) %v) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.v_t*, align 8
  %v.addr = alloca %struct.v_t*, align 8
  store %struct.v_t* %this, %struct.v_t** %this.addr, align 8
  store %struct.v_t* %v, %struct.v_t** %v.addr, align 8
  %this1 = load %struct.v_t*, %struct.v_t** %this.addr, align 8
  %y = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %1 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %z = getelementptr inbounds %struct.v_t, %struct.v_t* %1, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %mul = fmul double %0, %2
  %z2 = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %3 = load double, double* %z2, align 8
  %4 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %y3 = getelementptr inbounds %struct.v_t, %struct.v_t* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %5
  %sub = fsub double %mul, %mul4
  %z5 = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 2
  %6 = load double, double* %z5, align 8
  %7 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %x = getelementptr inbounds %struct.v_t, %struct.v_t* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %mul6 = fmul double %6, %8
  %x7 = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %9 = load double, double* %x7, align 8
  %10 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %z8 = getelementptr inbounds %struct.v_t, %struct.v_t* %10, i32 0, i32 2
  %11 = load double, double* %z8, align 8
  %mul9 = fmul double %9, %11
  %sub10 = fsub double %mul6, %mul9
  %x11 = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 0
  %12 = load double, double* %x11, align 8
  %13 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %y12 = getelementptr inbounds %struct.v_t, %struct.v_t* %13, i32 0, i32 1
  %14 = load double, double* %y12, align 8
  %mul13 = fmul double %12, %14
  %y14 = getelementptr inbounds %struct.v_t, %struct.v_t* %this1, i32 0, i32 1
  %15 = load double, double* %y14, align 8
  %16 = load %struct.v_t*, %struct.v_t** %v.addr, align 8
  %x15 = getelementptr inbounds %struct.v_t, %struct.v_t* %16, i32 0, i32 0
  %17 = load double, double* %x15, align 8
  %mul16 = fmul double %15, %17
  %sub17 = fsub double %mul13, %mul16
  call void @_ZN3v_tC2Eddd(%struct.v_t* %agg.result, double %sub, double %sub10, double %sub17)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN8sphere_tC2Ev(%struct.sphere_t* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.sphere_t*, align 8
  store %struct.sphere_t* %this, %struct.sphere_t** %this.addr, align 8
  %this1 = load %struct.sphere_t*, %struct.sphere_t** %this.addr, align 8
  %o = getelementptr inbounds %struct.sphere_t, %struct.sphere_t* %this1, i32 0, i32 0
  call void @_ZN3v_tC2Ev(%struct.v_t* %o)
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
