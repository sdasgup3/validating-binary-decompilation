; ModuleID = '473.astar/473.astar.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.wayobj = type <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, %struct.createwaymnginfot, %struct.createwayinfot, [4 x i8], i16*, %struct.waymapcellt*, i32*, i32*, i32, i32, i8, [3 x i8], i32, i16, i16, [4 x i8] }>
%struct.createwaymnginfot = type { float, float, float, float, i32, i32, float, float }
%struct.createwayinfot = type <{ %class.rvectort, %class.rvectort, i8, [3 x i8] }>
%class.rvectort = type { float, float, float }
%struct.waymapcellt = type { i16, i16 }
%class.way2obj = type { i8*, %struct.waymapcellt*, i16, [256 x i8], [256 x %class.flexarray], i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %union.anon, %union.anon, i32, i32 }
%class.flexarray = type { %struct.pointt*, i32, i32 }
%struct.pointt = type { i32, i32 }
%union.anon = type { i32 }
%class.regmngobj = type { i16*, i16, i32, i32, i8, i32, %class.regobj**, i8*, [256 x i8], i32, i32, float, i32, i32, %union.anon, %union.anon, i32, i32, %class.largesolidarray }
%class.regobj = type { i32, i8, i8, %class.regmngobj*, i32, %struct.pointt, i32, i32, i32, %class.flexarray.2 }
%class.flexarray.2 = type { %class.regobj**, i32, i32 }
%class.largesolidarray = type { %class.regobj**, %class.flexstack, %class.flexstack, %class.flexstack, i32, i32 }
%class.flexstack = type { i32*, i32, i32 }
%class.regwayobj = type { i32 (...)**, %class.flexarray.2, %class.flexarray.2, i32, i32, %class.regmngobj*, i8, %class.regobj*, %class.regobj* }
%struct.wayinfot = type { i8, %class.rvectort*, i32, i8 }
%struct.statinfot = type { double, double, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.workinfot = type { [4096 x i8], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.levelplacet = type { i16, i16, float, float, float }
%class.flexarray.10 = type { %struct.levelplacet*, i32, i32 }
%class.regboundobj = type <{ %class.flexarray, %class.flexarray, i8, [3 x i8], i32, %class.regobj*, i32, i32, i32, i32, %class.regobj**, i8*, i32, i32, i32, i32, %class.regmngobj*, i8, [7 x i8] }>
%struct.anon = type { i8, i8, i8, i8 }
%class.flexarray.3 = type { %class.regboundobj*, i32, i32 }

$_ZN8point16tC2Ess = comdat any

$_ZN8rvectortC2Ev = comdat any

$_ZN6wayobj6indexxEi = comdat any

$_ZN6wayobj6indexyEi = comdat any

$_ZN6wayobj5indexEii = comdat any

$_ZN6wayobj3mapEii = comdat any

$_ZN6wayobj4getxEf = comdat any

$_ZN6wayobj4getyEf = comdat any

$_ZN9regwayobjC2Ev = comdat any

$_ZN6wayobjC2Ev = comdat any

$_ZN14createwayinfotC2Ev = comdat any

$_ZN9statinfot4initEv = comdat any

$_ZN15largesolidarrayIP6regobjEixEi = comdat any

$_Z7irandomii = comdat any

$_ZN7way2obj10getterrainEii = comdat any

$_ZN9flexarrayI11levelplacetE6createEi = comdat any

$_ZN9flexarrayI11levelplacetE5clearEv = comdat any

$_ZN9flexarrayI11levelplacetE3addERKS0_ = comdat any

$_ZN9flexarrayI11levelplacetE7destroyEv = comdat any

$_Z13_aligned_freePv = comdat any

$_ZN9flexarrayI11levelplacetE8doublingEb = comdat any

$_Z15_aligned_mallocii = comdat any

$_ZN9regmngobj4mappEii = comdat any

$_ZN6pointtC2Eii = comdat any

$_ZN9flexarrayI6pointtE3addERKS0_ = comdat any

$_ZN9flexarrayI6pointtE8doublingEb = comdat any

$_ZN9flexarrayI6pointtE5clearEv = comdat any

$_ZN9flexarrayI6pointtEixEi = comdat any

$_ZN9flexarrayI6pointtE6createEi = comdat any

$_ZN9flexarrayI6pointtE7destroyEv = comdat any

$_ZN11regboundobj4mappEii = comdat any

$_Z3sqri = comdat any

$_Z7myroundf = comdat any

$_ZN11regboundobj7regmappEii = comdat any

$_ZN15largesolidarrayIP6regobjE6createEi = comdat any

$_ZN9flexarrayIiE6createEi = comdat any

$_ZN9flexstackIiE6createEi = comdat any

$_ZN9flexstackIiE3putEi = comdat any

$_ZN9flexstackIiE8doublingEv = comdat any

$_ZN15largesolidarrayIP6regobjE7destroyEv = comdat any

$_ZN9flexarrayIiE7destroyEv = comdat any

$_ZN9flexstackIiE7destroyEv = comdat any

$_ZN6regobjC2EP9regmngobj = comdat any

$_ZN15largesolidarrayIP6regobjE3addERKS1_ = comdat any

$_ZN15largesolidarrayIP6regobjE8doublingEv = comdat any

$_ZN9flexstackIiE3getEv = comdat any

$_ZN9flexarrayIiE8doublingEb = comdat any

$_ZN6pointtC2Ev = comdat any

$_ZN9flexarrayIP6regobjE6createEi = comdat any

$_ZN9flexarrayIP6regobjE3addERKS1_ = comdat any

$_ZN9flexarrayIP6regobjEixEi = comdat any

$_ZN15largesolidarrayIP6regobjE6removeEi = comdat any

$_ZN9flexarrayIP6regobjE7destroyEv = comdat any

$_ZN9flexarrayIP6regobjE8doublingEb = comdat any

$_ZN9flexarrayI11regboundobjE6createEi = comdat any

$_ZSt4sqrtf = comdat any

$_ZN9regmngobj7regmappEii = comdat any

$_ZN9flexarrayI11regboundobjE3addEv = comdat any

$_ZN9flexarrayI11regboundobjEixEi = comdat any

$_ZN9flexarrayI11regboundobjE7destroyEv = comdat any

$_ZN9flexarrayI11regboundobjE8doublingEb = comdat any

$_ZN9flexarrayIP6regobjE5clearEv = comdat any

$_Z8regdist2P6regobjS0_ = comdat any

$_Z3sqrf = comdat any

$_ZN7way2obj8movetimeEii = comdat any

$_ZN6wayobj9getxcoordEi = comdat any

$_ZN6wayobj9getycoordEi = comdat any

@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CreateWay_.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_Library.cpp, i8* null }]
@_ZL5alfa4 = internal global i32 0, align 4
@_ZL5alfa3 = internal global i32 0, align 4
@_ZL5alfa2 = internal global i32 0, align 4
@_ZL5alfa1 = internal global i32 0, align 4
@way = global %class.wayobj zeroinitializer, align 8
@way2 = global %class.way2obj zeroinitializer, align 8
@regmng = global %class.regmngobj zeroinitializer, align 8
@regway = global %class.regwayobj zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Create regional map time : %.0f\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Create ways time : %.0f\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Ways quantity : %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Total way length : %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Create reg ways time : %.0f\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Reg ways quantity : %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Total reg way length : %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Create river ways time : %.0f\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"River ways quantity : %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Total river way length : %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Create land ways time : %.0f\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Land ways quantity : %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Total land way length : %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Small Path Finding Library\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Read configuration file\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Cannot read configuration file name\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Cannot read configuration file\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Create ways\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Random map\0A\00", align 1
@_ZL5y1rnd = internal global i32 1023, align 4
@_ZL5y2rnd = internal global i32 11, align 4
@_ZL5y3rnd = internal global i32 3007, align 4
@.str.26 = private unnamed_addr constant [23 x i8] c"Error in createregions\00", align 1
@_ZTV9regwayobj = unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI9regwayobj to i8*), i8* bitcast (i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)* @_ZN9regwayobj12isaddtoboundEP6regobjS1_ to i8*), i8* bitcast (void (%class.regwayobj*, %class.regmngobj*)* @_ZN9regwayobj6createEP9regmngobj to i8*), i8* bitcast (void (%class.regwayobj*)* @_ZN9regwayobj7destroyEv to i8*)] }, align 8
@_ZTI9regwayobj = constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @_ZTS9regwayobj, i32 0, i32 0) }
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS9regwayobj = constant [11 x i8] c"9regwayobj\00"
@_ZN6regobj9bound1arpE = global %class.flexarray zeroinitializer, align 8
@_ZN6regobj9bound2arpE = global %class.flexarray zeroinitializer, align 8
@_ZN6regobj6boundlE = global i32 0, align 4
@_ZN6regobj5floddE = global i8 0, align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_CreateWay_.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  %call = call double @sin(double 0x3FF2D97C7F3321D2) #10
  %mul = fmul double 1.000000e+02, %call
  %call1 = call double @cos(double 0x3FF2D97C7F3321D2) #10
  %div = fdiv double %mul, %call1
  %add = fadd double %div, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @_ZL5alfa1, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
entry:
  %call = call double @sin(double 0x3FD921FB54442D18) #10
  %mul = fmul double 1.000000e+02, %call
  %call1 = call double @cos(double 0x3FD921FB54442D18) #10
  %div = fdiv double %mul, %call1
  %add = fadd double %div, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @_ZL5alfa2, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
entry:
  %call = call double @sin(double 0xBFD921FB54442D18) #10
  %mul = fmul double 1.000000e+02, %call
  %call1 = call double @cos(double 0xBFD921FB54442D18) #10
  %div = fdiv double %mul, %call1
  %add = fadd double %div, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @_ZL5alfa3, align 4
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" {
entry:
  %call = call double @sin(double 0xBFF2D97C7F3321D2) #10
  %mul = fmul double 1.000000e+02, %call
  %call1 = call double @cos(double 0xBFF2D97C7F3321D2) #10
  %div = fdiv double %mul, %call1
  %add = fadd double %div, 5.000000e-01
  %conv = fptosi double %add to i32
  store i32 %conv, i32* @_ZL5alfa4, align 4
  ret void
}

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj* %this, i32 %startindex, i32 %endindex, %struct.wayinfot* dereferenceable(24) %wayinfo) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startindex.addr = alloca i32, align 4
  %endindex.addr = alloca i32, align 4
  %wayinfo.addr = alloca %struct.wayinfot*, align 8
  %deltaar = alloca [8 x %struct.waymapcellt], align 16
  %wayarp = alloca %class.rvectort*, align 8
  %length = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %waymap = alloca %struct.waymapcellt*, align 8
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dpx = alloca i32, align 4
  %dpy = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %deltanum = alloca i32, align 4
  %delta1num = alloca i32, align 4
  %delta2num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %class.rvectort, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %ref.tmp142 = alloca %class.rvectort, align 4
  %tmp144 = alloca { <2 x float>, float }, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startindex, i32* %startindex.addr, align 4
  store i32 %endindex, i32* %endindex.addr, align 4
  store %struct.wayinfot* %wayinfo, %struct.wayinfot** %wayinfo.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %arrayinit.begin = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.begin, i16 signext -1, i16 signext 1)
  %arrayinit.element = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.begin, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element, i16 signext 0, i16 signext 1)
  %arrayinit.element2 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element2, i16 signext 1, i16 signext 1)
  %arrayinit.element3 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element2, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element3, i16 signext 1, i16 signext 0)
  %arrayinit.element4 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element3, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element4, i16 signext 1, i16 signext -1)
  %arrayinit.element5 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element4, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element5, i16 signext 0, i16 signext -1)
  %arrayinit.element6 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element5, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element6, i16 signext -1, i16 signext -1)
  %arrayinit.element7 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element6, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element7, i16 signext -1, i16 signext 0)
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %0 = load i16, i16* %step, align 8
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %2 = sext i32 %1 to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 12)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %call = call i8* @_Znam(i64 %6) #11
  %7 = bitcast i8* %call to %class.rvectort*
  %isempty = icmp eq i64 %2, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %class.rvectort, %class.rvectort* %7, i64 %2
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %class.rvectort* [ %7, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %class.rvectort, %class.rvectort* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.rvectort* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %entry, %invoke.cont
  store %class.rvectort* %7, %class.rvectort** %wayarp, align 8
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %8 = load i32, i32* %maply, align 8
  store i32 %8, i32* %yoffset, align 4
  %waymap8 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %9 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap8, align 8
  store %struct.waymapcellt* %9, %struct.waymapcellt** %waymap, align 8
  %10 = load i32, i32* %endindex.addr, align 4
  store i32 %10, i32* %index, align 4
  %11 = load i32, i32* %startindex.addr, align 4
  %call9 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %11)
  store i32 %call9, i32* %startx, align 4
  %12 = load i32, i32* %startindex.addr, align 4
  %call10 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %12)
  store i32 %call10, i32* %starty, align 4
  %13 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %13, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc154, %arrayctor.cont
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end156

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %index, align 4
  %call11 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %15)
  store i32 %call11, i32* %x, align 4
  %16 = load i32, i32* %index, align 4
  %call12 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %16)
  store i32 %call12, i32* %y, align 4
  %17 = load i32, i32* %startx, align 4
  %18 = load i32, i32* %x, align 4
  %sub13 = sub nsw i32 %17, %18
  store i32 %sub13, i32* %dpx, align 4
  %19 = load i32, i32* %starty, align 4
  %20 = load i32, i32* %y, align 4
  %sub14 = sub nsw i32 %19, %20
  store i32 %sub14, i32* %dpy, align 4
  %21 = load i32, i32* %dpx, align 4
  %cmp15 = icmp sgt i32 %21, 0
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %dpx, align 4
  br label %if.end18

lpad:                                             ; preds = %arrayctor.loop
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call) #12
  br label %eh.resume

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %dpx, align 4
  %cmp16 = icmp slt i32 %25, 0
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  store i32 -1, i32* %dpx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %26 = load i32, i32* %dpy, align 4
  %cmp19 = icmp sgt i32 %26, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end18
  store i32 1, i32* %dpy, align 4
  br label %if.end25

if.else21:                                        ; preds = %if.end18
  %27 = load i32, i32* %dpy, align 4
  %cmp22 = icmp slt i32 %27, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else21
  store i32 -1, i32* %dpy, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else21
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then20
  %28 = load i32, i32* %dpy, align 4
  %mul = mul nsw i32 100, %28
  %29 = load i32, i32* @_ZL5alfa1, align 4
  %30 = load i32, i32* %dpx, align 4
  %mul26 = mul nsw i32 %29, %30
  %cmp27 = icmp sge i32 %mul, %mul26
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.end25
  store i32 1, i32* %a, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.end25
  store i32 -1, i32* %a, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  %31 = load i32, i32* %dpy, align 4
  %mul31 = mul nsw i32 100, %31
  %32 = load i32, i32* @_ZL5alfa2, align 4
  %33 = load i32, i32* %dpx, align 4
  %mul32 = mul nsw i32 %32, %33
  %cmp33 = icmp sge i32 %mul31, %mul32
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end30
  store i32 1, i32* %b, align 4
  br label %if.end36

if.else35:                                        ; preds = %if.end30
  store i32 -1, i32* %b, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  %34 = load i32, i32* %dpy, align 4
  %mul37 = mul nsw i32 100, %34
  %35 = load i32, i32* @_ZL5alfa3, align 4
  %36 = load i32, i32* %dpx, align 4
  %mul38 = mul nsw i32 %35, %36
  %cmp39 = icmp sge i32 %mul37, %mul38
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end36
  store i32 1, i32* %c, align 4
  br label %if.end42

if.else41:                                        ; preds = %if.end36
  store i32 -1, i32* %c, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %37 = load i32, i32* %dpy, align 4
  %mul43 = mul nsw i32 100, %37
  %38 = load i32, i32* @_ZL5alfa4, align 4
  %39 = load i32, i32* %dpx, align 4
  %mul44 = mul nsw i32 %38, %39
  %cmp45 = icmp sge i32 %mul43, %mul44
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.end42
  store i32 1, i32* %d, align 4
  br label %if.end48

if.else47:                                        ; preds = %if.end42
  store i32 -1, i32* %d, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  %40 = load i32, i32* %a, align 4
  %cmp49 = icmp eq i32 %40, 1
  br i1 %cmp49, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %if.end48
  %41 = load i32, i32* %d, align 4
  %cmp50 = icmp eq i32 %41, 1
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %land.lhs.true
  store i32 0, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 1, i32* %deltanum, align 4
  br label %getsector

if.end52:                                         ; preds = %land.lhs.true, %if.end48
  %42 = load i32, i32* %b, align 4
  %cmp53 = icmp eq i32 %42, 1
  br i1 %cmp53, label %land.lhs.true54, label %if.end57

land.lhs.true54:                                  ; preds = %if.end52
  %43 = load i32, i32* %a, align 4
  %cmp55 = icmp eq i32 %43, -1
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true54
  store i32 1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 2, i32* %deltanum, align 4
  br label %getsector

if.end57:                                         ; preds = %land.lhs.true54, %if.end52
  %44 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %44, 1
  br i1 %cmp58, label %land.lhs.true59, label %if.end62

land.lhs.true59:                                  ; preds = %if.end57
  %45 = load i32, i32* %b, align 4
  %cmp60 = icmp eq i32 %45, -1
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %land.lhs.true59
  store i32 1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  store i32 3, i32* %deltanum, align 4
  br label %getsector

if.end62:                                         ; preds = %land.lhs.true59, %if.end57
  %46 = load i32, i32* %d, align 4
  %cmp63 = icmp eq i32 %46, 1
  br i1 %cmp63, label %land.lhs.true64, label %if.end67

land.lhs.true64:                                  ; preds = %if.end62
  %47 = load i32, i32* %c, align 4
  %cmp65 = icmp eq i32 %47, -1
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %land.lhs.true64
  store i32 1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 4, i32* %deltanum, align 4
  br label %getsector

if.end67:                                         ; preds = %land.lhs.true64, %if.end62
  %48 = load i32, i32* %a, align 4
  %cmp68 = icmp eq i32 %48, -1
  br i1 %cmp68, label %land.lhs.true69, label %if.end72

land.lhs.true69:                                  ; preds = %if.end67
  %49 = load i32, i32* %d, align 4
  %cmp70 = icmp eq i32 %49, -1
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %land.lhs.true69
  store i32 0, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 5, i32* %deltanum, align 4
  br label %getsector

if.end72:                                         ; preds = %land.lhs.true69, %if.end67
  %50 = load i32, i32* %a, align 4
  %cmp73 = icmp eq i32 %50, 1
  br i1 %cmp73, label %land.lhs.true74, label %if.end77

land.lhs.true74:                                  ; preds = %if.end72
  %51 = load i32, i32* %b, align 4
  %cmp75 = icmp eq i32 %51, -1
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %land.lhs.true74
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 6, i32* %deltanum, align 4
  br label %getsector

if.end77:                                         ; preds = %land.lhs.true74, %if.end72
  %52 = load i32, i32* %b, align 4
  %cmp78 = icmp eq i32 %52, 1
  br i1 %cmp78, label %land.lhs.true79, label %if.end82

land.lhs.true79:                                  ; preds = %if.end77
  %53 = load i32, i32* %c, align 4
  %cmp80 = icmp eq i32 %53, -1
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %land.lhs.true79
  store i32 -1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  store i32 7, i32* %deltanum, align 4
  br label %getsector

if.end82:                                         ; preds = %land.lhs.true79, %if.end77
  %54 = load i32, i32* %c, align 4
  %cmp83 = icmp eq i32 %54, 1
  br i1 %cmp83, label %land.lhs.true84, label %if.end87

land.lhs.true84:                                  ; preds = %if.end82
  %55 = load i32, i32* %d, align 4
  %cmp85 = icmp eq i32 %55, -1
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %land.lhs.true84
  store i32 -1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 0, i32* %deltanum, align 4
  br label %getsector

if.end87:                                         ; preds = %land.lhs.true84, %if.end82
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 6, i32* %deltanum, align 4
  br label %getsector

getsector:                                        ; preds = %if.end87, %if.then86, %if.then81, %if.then76, %if.then71, %if.then66, %if.then61, %if.then56, %if.then51
  %56 = load i32, i32* %deltanum, align 4
  store i32 %56, i32* %delta1num, align 4
  %57 = load i32, i32* %deltanum, align 4
  %add = add nsw i32 %57, 1
  %and = and i32 %add, 7
  store i32 %and, i32* %delta2num, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc, %getsector
  %58 = load i32, i32* %j, align 4
  %cmp89 = icmp slt i32 %58, 4
  br i1 %cmp89, label %for.body90, label %for.end

for.body90:                                       ; preds = %for.cond88
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %delta1num, align 4
  %idxprom = sext i32 %60 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom
  %x91 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %61 = load i16, i16* %x91, align 4
  %conv92 = sext i16 %61 to i32
  %add93 = add nsw i32 %59, %conv92
  store i32 %add93, i32* %x1, align 4
  %62 = load i32, i32* %y, align 4
  %63 = load i32, i32* %delta1num, align 4
  %idxprom94 = sext i32 %63 to i64
  %arrayidx95 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom94
  %y96 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx95, i32 0, i32 1
  %64 = load i16, i16* %y96, align 2
  %conv97 = sext i16 %64 to i32
  %add98 = add nsw i32 %62, %conv97
  store i32 %add98, i32* %y1, align 4
  %65 = load i32, i32* %x1, align 4
  %66 = load i32, i32* %y1, align 4
  %call99 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %65, i32 %66)
  store i32 %call99, i32* %index1, align 4
  %67 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %68 = load i32, i32* %index1, align 4
  %idxprom100 = sext i32 %68 to i64
  %arrayidx101 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %67, i64 %idxprom100
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx101, i32 0, i32 0
  %69 = load i16, i16* %fillnum, align 2
  %conv102 = zext i16 %69 to i32
  %fillnum103 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %70 = load i16, i16* %fillnum103, align 2
  %conv104 = zext i16 %70 to i32
  %cmp105 = icmp eq i32 %conv102, %conv104
  br i1 %cmp105, label %if.then106, label %if.end116

if.then106:                                       ; preds = %for.body90
  %71 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %72 = load i32, i32* %index1, align 4
  %idxprom107 = sext i32 %72 to i64
  %arrayidx108 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %71, i64 %idxprom107
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx108, i32 0, i32 1
  %73 = load i16, i16* %num, align 2
  %conv109 = zext i16 %73 to i32
  %74 = load i32, i32* %i, align 4
  %cmp110 = icmp eq i32 %conv109, %74
  br i1 %cmp110, label %if.then111, label %if.end115

if.then111:                                       ; preds = %if.then106
  %75 = load i32, i32* %index1, align 4
  %call112 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %75)
  store { <2 x float>, float } %call112, { <2 x float>, float }* %tmp, align 8
  %76 = bitcast { <2 x float>, float }* %tmp to i8*
  %77 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %76, i64 12, i32 4, i1 false)
  %78 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %79 to i64
  %arrayidx114 = getelementptr inbounds %class.rvectort, %class.rvectort* %78, i64 %idxprom113
  %80 = bitcast %class.rvectort* %arrayidx114 to i8*
  %81 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 12, i32 4, i1 false)
  %82 = load i32, i32* %index1, align 4
  store i32 %82, i32* %index, align 4
  br label %newpoint

if.end115:                                        ; preds = %if.then106
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %for.body90
  %83 = load i32, i32* %x, align 4
  %84 = load i32, i32* %delta2num, align 4
  %idxprom117 = sext i32 %84 to i64
  %arrayidx118 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom117
  %x119 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx118, i32 0, i32 0
  %85 = load i16, i16* %x119, align 4
  %conv120 = sext i16 %85 to i32
  %add121 = add nsw i32 %83, %conv120
  store i32 %add121, i32* %x1, align 4
  %86 = load i32, i32* %y, align 4
  %87 = load i32, i32* %delta2num, align 4
  %idxprom122 = sext i32 %87 to i64
  %arrayidx123 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom122
  %y124 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx123, i32 0, i32 1
  %88 = load i16, i16* %y124, align 2
  %conv125 = sext i16 %88 to i32
  %add126 = add nsw i32 %86, %conv125
  store i32 %add126, i32* %y1, align 4
  %89 = load i32, i32* %x1, align 4
  %90 = load i32, i32* %y1, align 4
  %call127 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %89, i32 %90)
  store i32 %call127, i32* %index1, align 4
  %91 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %92 = load i32, i32* %index1, align 4
  %idxprom128 = sext i32 %92 to i64
  %arrayidx129 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %91, i64 %idxprom128
  %fillnum130 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx129, i32 0, i32 0
  %93 = load i16, i16* %fillnum130, align 2
  %conv131 = zext i16 %93 to i32
  %fillnum132 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %94 = load i16, i16* %fillnum132, align 2
  %conv133 = zext i16 %94 to i32
  %cmp134 = icmp eq i32 %conv131, %conv133
  br i1 %cmp134, label %if.then135, label %if.end148

if.then135:                                       ; preds = %if.end116
  %95 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %96 = load i32, i32* %index1, align 4
  %idxprom136 = sext i32 %96 to i64
  %arrayidx137 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %95, i64 %idxprom136
  %num138 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx137, i32 0, i32 1
  %97 = load i16, i16* %num138, align 2
  %conv139 = zext i16 %97 to i32
  %98 = load i32, i32* %i, align 4
  %cmp140 = icmp eq i32 %conv139, %98
  br i1 %cmp140, label %if.then141, label %if.end147

if.then141:                                       ; preds = %if.then135
  %99 = load i32, i32* %index1, align 4
  %call143 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %99)
  store { <2 x float>, float } %call143, { <2 x float>, float }* %tmp144, align 8
  %100 = bitcast { <2 x float>, float }* %tmp144 to i8*
  %101 = bitcast %class.rvectort* %ref.tmp142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %101, i8* %100, i64 12, i32 4, i1 false)
  %102 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %103 to i64
  %arrayidx146 = getelementptr inbounds %class.rvectort, %class.rvectort* %102, i64 %idxprom145
  %104 = bitcast %class.rvectort* %arrayidx146 to i8*
  %105 = bitcast %class.rvectort* %ref.tmp142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 12, i32 4, i1 false)
  %106 = load i32, i32* %index1, align 4
  store i32 %106, i32* %index, align 4
  br label %newpoint

if.end147:                                        ; preds = %if.then135
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end116
  %107 = load i32, i32* %delta1num, align 4
  %dec = add nsw i32 %107, -1
  store i32 %dec, i32* %delta1num, align 4
  %108 = load i32, i32* %delta1num, align 4
  %cmp149 = icmp slt i32 %108, 0
  br i1 %cmp149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.end148
  store i32 7, i32* %delta1num, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.end148
  %109 = load i32, i32* %delta2num, align 4
  %add152 = add nsw i32 %109, 1
  %and153 = and i32 %add152, 7
  store i32 %and153, i32* %delta2num, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end151
  %110 = load i32, i32* %j, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond88

for.end:                                          ; preds = %for.cond88
  %111 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %isnull = icmp eq %class.rvectort* %111, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end
  %112 = bitcast %class.rvectort* %111 to i8*
  call void @_ZdaPv(i8* %112) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end
  store i1 false, i1* %retval, align 1
  br label %return

newpoint:                                         ; preds = %if.then141, %if.then111
  br label %for.inc154

for.inc154:                                       ; preds = %newpoint
  %113 = load i32, i32* %i, align 4
  %dec155 = add nsw i32 %113, -1
  store i32 %dec155, i32* %i, align 4
  br label %for.cond

for.end156:                                       ; preds = %for.cond
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %startp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo, i32 0, i32 0
  %114 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %arrayidx157 = getelementptr inbounds %class.rvectort, %class.rvectort* %114, i64 0
  %115 = bitcast %class.rvectort* %arrayidx157 to i8*
  %116 = bitcast %class.rvectort* %startp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 12, i32 4, i1 false)
  %createwayinfo158 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %finishp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo158, i32 0, i32 1
  %117 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %118 = load i32, i32* %length, align 4
  %sub159 = sub nsw i32 %118, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds %class.rvectort, %class.rvectort* %117, i64 %idxprom160
  %119 = bitcast %class.rvectort* %arrayidx161 to i8*
  %120 = bitcast %class.rvectort* %finishp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 12, i32 4, i1 false)
  %121 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %121, i32 0, i32 0
  store i8 1, i8* %flexist, align 8
  %122 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %123 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp162 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %123, i32 0, i32 1
  store %class.rvectort* %122, %class.rvectort** %wayarp162, align 8
  %124 = load i32, i32* %length, align 4
  %125 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %125, i32 0, i32 2
  store i32 %124, i32* %wayarsize, align 8
  %126 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %126, i32 0, i32 3
  store i8 0, i8* %flcorrect, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end156, %delete.end
  %127 = load i1, i1* %retval, align 1
  ret i1 %127

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val163 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val163
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8point16tC2Ess(%struct.waymapcellt* %this, i16 signext %xin, i16 signext %yin) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.waymapcellt*, align 8
  %xin.addr = alloca i16, align 2
  %yin.addr = alloca i16, align 2
  store %struct.waymapcellt* %this, %struct.waymapcellt** %this.addr, align 8
  store i16 %xin, i16* %xin.addr, align 2
  store i16 %yin, i16* %yin.addr, align 2
  %this1 = load %struct.waymapcellt*, %struct.waymapcellt** %this.addr, align 8
  %0 = load i16, i16* %xin.addr, align 2
  %x = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %this1, i32 0, i32 0
  store i16 %0, i16* %x, align 2
  %1 = load i16, i16* %yin.addr, align 2
  %y = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %this1, i32 0, i32 1
  store i16 %1, i16* %y, align 2
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN8rvectortC2Ev(%class.rvectort* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.rvectort*, align 8
  store %class.rvectort* %this, %class.rvectort** %this.addr, align 8
  %this1 = load %class.rvectort*, %class.rvectort** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %index.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %indexxmask = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 22
  %1 = load i32, i32* %indexxmask, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %index.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %index.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %1 = load i32, i32* %shift, align 8
  %shr = ashr i32 %0, %1
  ret i32 %shr
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj5indexEii(%class.wayobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %y.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %1 = load i32, i32* %shift, align 8
  %shl = shl i32 %0, %1
  %2 = load i32, i32* %x.addr, align 4
  %or = or i32 %shl, %2
  ret i32 %or
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj* %this, i32 %startindex, i32 %endindex, %struct.waymapcellt** dereferenceable(8) %wayar, i32* dereferenceable(4) %waylength) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startindex.addr = alloca i32, align 4
  %endindex.addr = alloca i32, align 4
  %wayar.addr = alloca %struct.waymapcellt**, align 8
  %waylength.addr = alloca i32*, align 8
  %deltaar = alloca [8 x %struct.waymapcellt], align 16
  %length = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %waymap = alloca %struct.waymapcellt*, align 8
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dpx = alloca i32, align 4
  %dpy = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %deltanum = alloca i32, align 4
  %delta1num = alloca i32, align 4
  %delta2num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ref.tmp = alloca %struct.waymapcellt, align 2
  %ref.tmp172 = alloca %struct.waymapcellt, align 2
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startindex, i32* %startindex.addr, align 4
  store i32 %endindex, i32* %endindex.addr, align 4
  store %struct.waymapcellt** %wayar, %struct.waymapcellt*** %wayar.addr, align 8
  store i32* %waylength, i32** %waylength.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %arrayinit.begin = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 0
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.begin, i16 signext -1, i16 signext 1)
  %arrayinit.element = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.begin, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element, i16 signext 0, i16 signext 1)
  %arrayinit.element2 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element2, i16 signext 1, i16 signext 1)
  %arrayinit.element3 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element2, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element3, i16 signext 1, i16 signext 0)
  %arrayinit.element4 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element3, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element4, i16 signext 1, i16 signext -1)
  %arrayinit.element5 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element4, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element5, i16 signext 0, i16 signext -1)
  %arrayinit.element6 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element5, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element6, i16 signext -1, i16 signext -1)
  %arrayinit.element7 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayinit.element6, i64 1
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %arrayinit.element7, i16 signext -1, i16 signext 0)
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %0 = load i16, i16* %step, align 8
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %conv8 = sext i32 %1 to i64
  %mul = mul i64 %conv8, 4
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to %struct.waymapcellt*
  %3 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* %2, %struct.waymapcellt** %3, align 8
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %4 = load i32, i32* %maply, align 8
  store i32 %4, i32* %yoffset, align 4
  %waymap9 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %5 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap9, align 8
  store %struct.waymapcellt* %5, %struct.waymapcellt** %waymap, align 8
  %6 = load i32, i32* %endindex.addr, align 4
  store i32 %6, i32* %index, align 4
  %7 = load i32, i32* %startindex.addr, align 4
  %call10 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %7)
  store i32 %call10, i32* %startx, align 4
  %8 = load i32, i32* %startindex.addr, align 4
  %call11 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %8)
  store i32 %call11, i32* %starty, align 4
  %9 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %9, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end166

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %index, align 4
  %call12 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %11)
  store i32 %call12, i32* %x, align 4
  %12 = load i32, i32* %index, align 4
  %call13 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %12)
  store i32 %call13, i32* %y, align 4
  %13 = load i32, i32* %startx, align 4
  %14 = load i32, i32* %x, align 4
  %sub14 = sub nsw i32 %13, %14
  store i32 %sub14, i32* %dpx, align 4
  %15 = load i32, i32* %starty, align 4
  %16 = load i32, i32* %y, align 4
  %sub15 = sub nsw i32 %15, %16
  store i32 %sub15, i32* %dpy, align 4
  %17 = load i32, i32* %dpx, align 4
  %cmp16 = icmp sgt i32 %17, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %dpx, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body
  %18 = load i32, i32* %dpx, align 4
  %cmp17 = icmp slt i32 %18, 0
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else
  store i32 -1, i32* %dpx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %19 = load i32, i32* %dpy, align 4
  %cmp20 = icmp sgt i32 %19, 0
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  store i32 1, i32* %dpy, align 4
  br label %if.end26

if.else22:                                        ; preds = %if.end19
  %20 = load i32, i32* %dpy, align 4
  %cmp23 = icmp slt i32 %20, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else22
  store i32 -1, i32* %dpy, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else22
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then21
  %21 = load i32, i32* %dpy, align 4
  %mul27 = mul nsw i32 100, %21
  %22 = load i32, i32* @_ZL5alfa1, align 4
  %23 = load i32, i32* %dpx, align 4
  %mul28 = mul nsw i32 %22, %23
  %cmp29 = icmp sge i32 %mul27, %mul28
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.end26
  store i32 1, i32* %a, align 4
  br label %if.end32

if.else31:                                        ; preds = %if.end26
  store i32 -1, i32* %a, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %24 = load i32, i32* %dpy, align 4
  %mul33 = mul nsw i32 100, %24
  %25 = load i32, i32* @_ZL5alfa2, align 4
  %26 = load i32, i32* %dpx, align 4
  %mul34 = mul nsw i32 %25, %26
  %cmp35 = icmp sge i32 %mul33, %mul34
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.end32
  store i32 1, i32* %b, align 4
  br label %if.end38

if.else37:                                        ; preds = %if.end32
  store i32 -1, i32* %b, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then36
  %27 = load i32, i32* %dpy, align 4
  %mul39 = mul nsw i32 100, %27
  %28 = load i32, i32* @_ZL5alfa3, align 4
  %29 = load i32, i32* %dpx, align 4
  %mul40 = mul nsw i32 %28, %29
  %cmp41 = icmp sge i32 %mul39, %mul40
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.end38
  store i32 1, i32* %c, align 4
  br label %if.end44

if.else43:                                        ; preds = %if.end38
  store i32 -1, i32* %c, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  %30 = load i32, i32* %dpy, align 4
  %mul45 = mul nsw i32 100, %30
  %31 = load i32, i32* @_ZL5alfa4, align 4
  %32 = load i32, i32* %dpx, align 4
  %mul46 = mul nsw i32 %31, %32
  %cmp47 = icmp sge i32 %mul45, %mul46
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.end44
  store i32 1, i32* %d, align 4
  br label %if.end50

if.else49:                                        ; preds = %if.end44
  store i32 -1, i32* %d, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %33 = load i32, i32* %a, align 4
  %cmp51 = icmp eq i32 %33, 1
  br i1 %cmp51, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %if.end50
  %34 = load i32, i32* %d, align 4
  %cmp52 = icmp eq i32 %34, 1
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true
  store i32 0, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 1, i32* %deltanum, align 4
  br label %getsector

if.end54:                                         ; preds = %land.lhs.true, %if.end50
  %35 = load i32, i32* %b, align 4
  %cmp55 = icmp eq i32 %35, 1
  br i1 %cmp55, label %land.lhs.true56, label %if.end59

land.lhs.true56:                                  ; preds = %if.end54
  %36 = load i32, i32* %a, align 4
  %cmp57 = icmp eq i32 %36, -1
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %land.lhs.true56
  store i32 1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 2, i32* %deltanum, align 4
  br label %getsector

if.end59:                                         ; preds = %land.lhs.true56, %if.end54
  %37 = load i32, i32* %c, align 4
  %cmp60 = icmp eq i32 %37, 1
  br i1 %cmp60, label %land.lhs.true61, label %if.end64

land.lhs.true61:                                  ; preds = %if.end59
  %38 = load i32, i32* %b, align 4
  %cmp62 = icmp eq i32 %38, -1
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true61
  store i32 1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  store i32 3, i32* %deltanum, align 4
  br label %getsector

if.end64:                                         ; preds = %land.lhs.true61, %if.end59
  %39 = load i32, i32* %d, align 4
  %cmp65 = icmp eq i32 %39, 1
  br i1 %cmp65, label %land.lhs.true66, label %if.end69

land.lhs.true66:                                  ; preds = %if.end64
  %40 = load i32, i32* %c, align 4
  %cmp67 = icmp eq i32 %40, -1
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %land.lhs.true66
  store i32 1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 4, i32* %deltanum, align 4
  br label %getsector

if.end69:                                         ; preds = %land.lhs.true66, %if.end64
  %41 = load i32, i32* %a, align 4
  %cmp70 = icmp eq i32 %41, -1
  br i1 %cmp70, label %land.lhs.true71, label %if.end74

land.lhs.true71:                                  ; preds = %if.end69
  %42 = load i32, i32* %d, align 4
  %cmp72 = icmp eq i32 %42, -1
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %land.lhs.true71
  store i32 0, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 5, i32* %deltanum, align 4
  br label %getsector

if.end74:                                         ; preds = %land.lhs.true71, %if.end69
  %43 = load i32, i32* %a, align 4
  %cmp75 = icmp eq i32 %43, 1
  br i1 %cmp75, label %land.lhs.true76, label %if.end79

land.lhs.true76:                                  ; preds = %if.end74
  %44 = load i32, i32* %b, align 4
  %cmp77 = icmp eq i32 %44, -1
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %land.lhs.true76
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 6, i32* %deltanum, align 4
  br label %getsector

if.end79:                                         ; preds = %land.lhs.true76, %if.end74
  %45 = load i32, i32* %b, align 4
  %cmp80 = icmp eq i32 %45, 1
  br i1 %cmp80, label %land.lhs.true81, label %if.end84

land.lhs.true81:                                  ; preds = %if.end79
  %46 = load i32, i32* %c, align 4
  %cmp82 = icmp eq i32 %46, -1
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %land.lhs.true81
  store i32 -1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  store i32 7, i32* %deltanum, align 4
  br label %getsector

if.end84:                                         ; preds = %land.lhs.true81, %if.end79
  %47 = load i32, i32* %c, align 4
  %cmp85 = icmp eq i32 %47, 1
  br i1 %cmp85, label %land.lhs.true86, label %if.end89

land.lhs.true86:                                  ; preds = %if.end84
  %48 = load i32, i32* %d, align 4
  %cmp87 = icmp eq i32 %48, -1
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %land.lhs.true86
  store i32 -1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 0, i32* %deltanum, align 4
  br label %getsector

if.end89:                                         ; preds = %land.lhs.true86, %if.end84
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  store i32 6, i32* %deltanum, align 4
  br label %getsector

getsector:                                        ; preds = %if.end89, %if.then88, %if.then83, %if.then78, %if.then73, %if.then68, %if.then63, %if.then58, %if.then53
  %49 = load i32, i32* %deltanum, align 4
  store i32 %49, i32* %delta1num, align 4
  %50 = load i32, i32* %deltanum, align 4
  %add = add nsw i32 %50, 1
  %and = and i32 %add, 7
  store i32 %and, i32* %delta2num, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc, %getsector
  %51 = load i32, i32* %j, align 4
  %cmp91 = icmp slt i32 %51, 4
  br i1 %cmp91, label %for.body92, label %for.end

for.body92:                                       ; preds = %for.cond90
  %52 = load i32, i32* %x, align 4
  %53 = load i32, i32* %delta1num, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom
  %x93 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %54 = load i16, i16* %x93, align 4
  %conv94 = sext i16 %54 to i32
  %add95 = add nsw i32 %52, %conv94
  store i32 %add95, i32* %x1, align 4
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %delta1num, align 4
  %idxprom96 = sext i32 %56 to i64
  %arrayidx97 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom96
  %y98 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx97, i32 0, i32 1
  %57 = load i16, i16* %y98, align 2
  %conv99 = sext i16 %57 to i32
  %add100 = add nsw i32 %55, %conv99
  store i32 %add100, i32* %y1, align 4
  %58 = load i32, i32* %x1, align 4
  %59 = load i32, i32* %y1, align 4
  %call101 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %58, i32 %59)
  store i32 %call101, i32* %index1, align 4
  %60 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %61 = load i32, i32* %index1, align 4
  %idxprom102 = sext i32 %61 to i64
  %arrayidx103 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %60, i64 %idxprom102
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx103, i32 0, i32 0
  %62 = load i16, i16* %fillnum, align 2
  %conv104 = zext i16 %62 to i32
  %fillnum105 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %63 = load i16, i16* %fillnum105, align 2
  %conv106 = zext i16 %63 to i32
  %cmp107 = icmp eq i32 %conv104, %conv106
  br i1 %cmp107, label %if.then108, label %if.end123

if.then108:                                       ; preds = %for.body92
  %64 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %65 = load i32, i32* %index1, align 4
  %idxprom109 = sext i32 %65 to i64
  %arrayidx110 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %64, i64 %idxprom109
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx110, i32 0, i32 1
  %66 = load i16, i16* %num, align 2
  %conv111 = zext i16 %66 to i32
  %67 = load i32, i32* %i, align 4
  %cmp112 = icmp eq i32 %conv111, %67
  br i1 %cmp112, label %if.then113, label %if.end122

if.then113:                                       ; preds = %if.then108
  %68 = load i32, i32* %x1, align 4
  %conv114 = trunc i32 %68 to i16
  %69 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %70 = load %struct.waymapcellt*, %struct.waymapcellt** %69, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %71 to i64
  %arrayidx116 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %70, i64 %idxprom115
  %x117 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx116, i32 0, i32 0
  store i16 %conv114, i16* %x117, align 2
  %72 = load i32, i32* %y1, align 4
  %conv118 = trunc i32 %72 to i16
  %73 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %74 = load %struct.waymapcellt*, %struct.waymapcellt** %73, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %75 to i64
  %arrayidx120 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %74, i64 %idxprom119
  %y121 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx120, i32 0, i32 1
  store i16 %conv118, i16* %y121, align 2
  %76 = load i32, i32* %index1, align 4
  store i32 %76, i32* %index, align 4
  br label %newpoint

if.end122:                                        ; preds = %if.then108
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %for.body92
  %77 = load i32, i32* %x, align 4
  %78 = load i32, i32* %delta2num, align 4
  %idxprom124 = sext i32 %78 to i64
  %arrayidx125 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom124
  %x126 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx125, i32 0, i32 0
  %79 = load i16, i16* %x126, align 4
  %conv127 = sext i16 %79 to i32
  %add128 = add nsw i32 %77, %conv127
  store i32 %add128, i32* %x1, align 4
  %80 = load i32, i32* %y, align 4
  %81 = load i32, i32* %delta2num, align 4
  %idxprom129 = sext i32 %81 to i64
  %arrayidx130 = getelementptr inbounds [8 x %struct.waymapcellt], [8 x %struct.waymapcellt]* %deltaar, i64 0, i64 %idxprom129
  %y131 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx130, i32 0, i32 1
  %82 = load i16, i16* %y131, align 2
  %conv132 = sext i16 %82 to i32
  %add133 = add nsw i32 %80, %conv132
  store i32 %add133, i32* %y1, align 4
  %83 = load i32, i32* %x1, align 4
  %84 = load i32, i32* %y1, align 4
  %call134 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %83, i32 %84)
  store i32 %call134, i32* %index1, align 4
  %85 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %86 = load i32, i32* %index1, align 4
  %idxprom135 = sext i32 %86 to i64
  %arrayidx136 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %85, i64 %idxprom135
  %fillnum137 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx136, i32 0, i32 0
  %87 = load i16, i16* %fillnum137, align 2
  %conv138 = zext i16 %87 to i32
  %fillnum139 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %88 = load i16, i16* %fillnum139, align 2
  %conv140 = zext i16 %88 to i32
  %cmp141 = icmp eq i32 %conv138, %conv140
  br i1 %cmp141, label %if.then142, label %if.end158

if.then142:                                       ; preds = %if.end123
  %89 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %90 = load i32, i32* %index1, align 4
  %idxprom143 = sext i32 %90 to i64
  %arrayidx144 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %89, i64 %idxprom143
  %num145 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx144, i32 0, i32 1
  %91 = load i16, i16* %num145, align 2
  %conv146 = zext i16 %91 to i32
  %92 = load i32, i32* %i, align 4
  %cmp147 = icmp eq i32 %conv146, %92
  br i1 %cmp147, label %if.then148, label %if.end157

if.then148:                                       ; preds = %if.then142
  %93 = load i32, i32* %x1, align 4
  %conv149 = trunc i32 %93 to i16
  %94 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %95 = load %struct.waymapcellt*, %struct.waymapcellt** %94, align 8
  %96 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %96 to i64
  %arrayidx151 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %95, i64 %idxprom150
  %x152 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx151, i32 0, i32 0
  store i16 %conv149, i16* %x152, align 2
  %97 = load i32, i32* %y1, align 4
  %conv153 = trunc i32 %97 to i16
  %98 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %99 = load %struct.waymapcellt*, %struct.waymapcellt** %98, align 8
  %100 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %100 to i64
  %arrayidx155 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %99, i64 %idxprom154
  %y156 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx155, i32 0, i32 1
  store i16 %conv153, i16* %y156, align 2
  %101 = load i32, i32* %index1, align 4
  store i32 %101, i32* %index, align 4
  br label %newpoint

if.end157:                                        ; preds = %if.then142
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end123
  %102 = load i32, i32* %delta1num, align 4
  %dec = add nsw i32 %102, -1
  store i32 %dec, i32* %delta1num, align 4
  %103 = load i32, i32* %delta1num, align 4
  %cmp159 = icmp slt i32 %103, 0
  br i1 %cmp159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end158
  store i32 7, i32* %delta1num, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end158
  %104 = load i32, i32* %delta2num, align 4
  %add162 = add nsw i32 %104, 1
  %and163 = and i32 %add162, 7
  store i32 %and163, i32* %delta2num, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end161
  %105 = load i32, i32* %j, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond90

for.end:                                          ; preds = %for.cond90
  %106 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %107 = load %struct.waymapcellt*, %struct.waymapcellt** %106, align 8
  %108 = bitcast %struct.waymapcellt* %107 to i8*
  call void @free(i8* %108) #10
  store i1 false, i1* %retval, align 1
  br label %return

newpoint:                                         ; preds = %if.then148, %if.then113
  br label %for.inc164

for.inc164:                                       ; preds = %newpoint
  %109 = load i32, i32* %i, align 4
  %dec165 = add nsw i32 %109, -1
  store i32 %dec165, i32* %i, align 4
  br label %for.cond

for.end166:                                       ; preds = %for.cond
  %110 = load i32, i32* %startindex.addr, align 4
  %call167 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %110)
  %conv168 = trunc i32 %call167 to i16
  %111 = load i32, i32* %startindex.addr, align 4
  %call169 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %111)
  %conv170 = trunc i32 %call169 to i16
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %ref.tmp, i16 signext %conv168, i16 signext %conv170)
  %112 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %113 = load %struct.waymapcellt*, %struct.waymapcellt** %112, align 8
  %arrayidx171 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %113, i64 0
  %114 = bitcast %struct.waymapcellt* %arrayidx171 to i8*
  %115 = bitcast %struct.waymapcellt* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 4, i32 2, i1 false)
  %116 = load i32, i32* %endindex.addr, align 4
  %call173 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %116)
  %conv174 = trunc i32 %call173 to i16
  %117 = load i32, i32* %endindex.addr, align 4
  %call175 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %117)
  %conv176 = trunc i32 %call175 to i16
  call void @_ZN8point16tC2Ess(%struct.waymapcellt* %ref.tmp172, i16 signext %conv174, i16 signext %conv176)
  %118 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %119 = load %struct.waymapcellt*, %struct.waymapcellt** %118, align 8
  %120 = load i32, i32* %length, align 4
  %sub177 = sub nsw i32 %120, 1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %119, i64 %idxprom178
  %121 = bitcast %struct.waymapcellt* %arrayidx179 to i8*
  %122 = bitcast %struct.waymapcellt* %ref.tmp172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 4, i32 2, i1 false)
  %123 = load i32, i32* %length, align 4
  %124 = load i32*, i32** %waylength.addr, align 8
  store i32 %123, i32* %124, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end166, %for.end
  %125 = load i1, i1* %retval, align 1
  ret i1 %125
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj12createwayar2EiiR8wayinfot(%class.wayobj* %this, i32 %startindex, i32 %endindex, %struct.wayinfot* dereferenceable(24) %wayinfo) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startindex.addr = alloca i32, align 4
  %endindex.addr = alloca i32, align 4
  %wayinfo.addr = alloca %struct.wayinfot*, align 8
  %wayarp = alloca %class.rvectort*, align 8
  %length = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %waymap = alloca %struct.waymapcellt*, align 8
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dpx = alloca i32, align 4
  %dpy = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %ref.tmp = alloca %class.rvectort, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %ref.tmp115 = alloca %class.rvectort, align 4
  %tmp117 = alloca { <2 x float>, float }, align 8
  %ref.tmp136 = alloca %class.rvectort, align 4
  %tmp138 = alloca { <2 x float>, float }, align 8
  %ref.tmp158 = alloca %class.rvectort, align 4
  %tmp160 = alloca { <2 x float>, float }, align 8
  %ref.tmp180 = alloca %class.rvectort, align 4
  %tmp182 = alloca { <2 x float>, float }, align 8
  %ref.tmp202 = alloca %class.rvectort, align 4
  %tmp204 = alloca { <2 x float>, float }, align 8
  %ref.tmp225 = alloca %class.rvectort, align 4
  %tmp227 = alloca { <2 x float>, float }, align 8
  %ref.tmp247 = alloca %class.rvectort, align 4
  %tmp249 = alloca { <2 x float>, float }, align 8
  %ref.tmp269 = alloca %class.rvectort, align 4
  %tmp271 = alloca { <2 x float>, float }, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startindex, i32* %startindex.addr, align 4
  store i32 %endindex, i32* %endindex.addr, align 4
  store %struct.wayinfot* %wayinfo, %struct.wayinfot** %wayinfo.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %0 = load i16, i16* %step, align 8
  %conv = sext i16 %0 to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %2 = sext i32 %1 to i64
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 12)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %call = call i8* @_Znam(i64 %6) #11
  %7 = bitcast i8* %call to %class.rvectort*
  %isempty = icmp eq i64 %2, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %entry
  %arrayctor.end = getelementptr inbounds %class.rvectort, %class.rvectort* %7, i64 %2
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %class.rvectort* [ %7, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %class.rvectort, %class.rvectort* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.rvectort* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %entry, %invoke.cont
  store %class.rvectort* %7, %class.rvectort** %wayarp, align 8
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %8 = load i32, i32* %maply, align 8
  store i32 %8, i32* %yoffset, align 4
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %9 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8
  store %struct.waymapcellt* %9, %struct.waymapcellt** %waymap, align 8
  %10 = load i32, i32* %endindex.addr, align 4
  store i32 %10, i32* %index, align 4
  %11 = load i32, i32* %startindex.addr, align 4
  %call3 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %11)
  store i32 %call3, i32* %startx, align 4
  %12 = load i32, i32* %startindex.addr, align 4
  %call4 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %12)
  store i32 %call4, i32* %starty, align 4
  %13 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %13, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %arrayctor.cont
  %14 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %14, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %index, align 4
  %call5 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %15)
  store i32 %call5, i32* %x, align 4
  %16 = load i32, i32* %index, align 4
  %call6 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %16)
  store i32 %call6, i32* %y, align 4
  %17 = load i32, i32* %startx, align 4
  %18 = load i32, i32* %x, align 4
  %sub7 = sub nsw i32 %17, %18
  store i32 %sub7, i32* %dpx, align 4
  %19 = load i32, i32* %starty, align 4
  %20 = load i32, i32* %y, align 4
  %sub8 = sub nsw i32 %19, %20
  store i32 %sub8, i32* %dpy, align 4
  %21 = load i32, i32* %dpx, align 4
  %cmp9 = icmp sgt i32 %21, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %dpx, align 4
  br label %if.end12

lpad:                                             ; preds = %arrayctor.loop
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %exn.slot, align 8
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call) #12
  br label %eh.resume

if.else:                                          ; preds = %for.body
  %25 = load i32, i32* %dpx, align 4
  %cmp10 = icmp slt i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  store i32 -1, i32* %dpx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %26 = load i32, i32* %dpy, align 4
  %cmp13 = icmp sgt i32 %26, 0
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.end12
  store i32 1, i32* %dpy, align 4
  br label %if.end19

if.else15:                                        ; preds = %if.end12
  %27 = load i32, i32* %dpy, align 4
  %cmp16 = icmp slt i32 %27, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else15
  store i32 -1, i32* %dpy, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  %28 = load i32, i32* %dpy, align 4
  %mul = mul nsw i32 100, %28
  %29 = load i32, i32* @_ZL5alfa1, align 4
  %30 = load i32, i32* %dpx, align 4
  %mul20 = mul nsw i32 %29, %30
  %cmp21 = icmp sge i32 %mul, %mul20
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end19
  store i32 1, i32* %a, align 4
  br label %if.end24

if.else23:                                        ; preds = %if.end19
  store i32 -1, i32* %a, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  %31 = load i32, i32* %dpy, align 4
  %mul25 = mul nsw i32 100, %31
  %32 = load i32, i32* @_ZL5alfa2, align 4
  %33 = load i32, i32* %dpx, align 4
  %mul26 = mul nsw i32 %32, %33
  %cmp27 = icmp sge i32 %mul25, %mul26
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.end24
  store i32 1, i32* %b, align 4
  br label %if.end30

if.else29:                                        ; preds = %if.end24
  store i32 -1, i32* %b, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  %34 = load i32, i32* %dpy, align 4
  %mul31 = mul nsw i32 100, %34
  %35 = load i32, i32* @_ZL5alfa3, align 4
  %36 = load i32, i32* %dpx, align 4
  %mul32 = mul nsw i32 %35, %36
  %cmp33 = icmp sge i32 %mul31, %mul32
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.end30
  store i32 1, i32* %c, align 4
  br label %if.end36

if.else35:                                        ; preds = %if.end30
  store i32 -1, i32* %c, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  %37 = load i32, i32* %dpy, align 4
  %mul37 = mul nsw i32 100, %37
  %38 = load i32, i32* @_ZL5alfa4, align 4
  %39 = load i32, i32* %dpx, align 4
  %mul38 = mul nsw i32 %38, %39
  %cmp39 = icmp sge i32 %mul37, %mul38
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end36
  store i32 1, i32* %d, align 4
  br label %if.end42

if.else41:                                        ; preds = %if.end36
  store i32 -1, i32* %d, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %if.then40
  %40 = load i32, i32* %a, align 4
  %cmp43 = icmp eq i32 %40, 1
  br i1 %cmp43, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %if.end42
  %41 = load i32, i32* %d, align 4
  %cmp44 = icmp eq i32 %41, 1
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true
  store i32 0, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  br label %getsector

if.end46:                                         ; preds = %land.lhs.true, %if.end42
  %42 = load i32, i32* %b, align 4
  %cmp47 = icmp eq i32 %42, 1
  br i1 %cmp47, label %land.lhs.true48, label %if.end51

land.lhs.true48:                                  ; preds = %if.end46
  %43 = load i32, i32* %a, align 4
  %cmp49 = icmp eq i32 %43, -1
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true48
  store i32 1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  br label %getsector

if.end51:                                         ; preds = %land.lhs.true48, %if.end46
  %44 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %44, 1
  br i1 %cmp52, label %land.lhs.true53, label %if.end56

land.lhs.true53:                                  ; preds = %if.end51
  %45 = load i32, i32* %b, align 4
  %cmp54 = icmp eq i32 %45, -1
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %land.lhs.true53
  store i32 1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  br label %getsector

if.end56:                                         ; preds = %land.lhs.true53, %if.end51
  %46 = load i32, i32* %d, align 4
  %cmp57 = icmp eq i32 %46, 1
  br i1 %cmp57, label %land.lhs.true58, label %if.end61

land.lhs.true58:                                  ; preds = %if.end56
  %47 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %47, -1
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true58
  store i32 1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  br label %getsector

if.end61:                                         ; preds = %land.lhs.true58, %if.end56
  %48 = load i32, i32* %a, align 4
  %cmp62 = icmp eq i32 %48, -1
  br i1 %cmp62, label %land.lhs.true63, label %if.end66

land.lhs.true63:                                  ; preds = %if.end61
  %49 = load i32, i32* %d, align 4
  %cmp64 = icmp eq i32 %49, -1
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true63
  store i32 0, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  br label %getsector

if.end66:                                         ; preds = %land.lhs.true63, %if.end61
  %50 = load i32, i32* %a, align 4
  %cmp67 = icmp eq i32 %50, 1
  br i1 %cmp67, label %land.lhs.true68, label %if.end71

land.lhs.true68:                                  ; preds = %if.end66
  %51 = load i32, i32* %b, align 4
  %cmp69 = icmp eq i32 %51, -1
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.lhs.true68
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  br label %getsector

if.end71:                                         ; preds = %land.lhs.true68, %if.end66
  %52 = load i32, i32* %b, align 4
  %cmp72 = icmp eq i32 %52, 1
  br i1 %cmp72, label %land.lhs.true73, label %if.end76

land.lhs.true73:                                  ; preds = %if.end71
  %53 = load i32, i32* %c, align 4
  %cmp74 = icmp eq i32 %53, -1
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %land.lhs.true73
  store i32 -1, i32* %dx, align 4
  store i32 0, i32* %dy, align 4
  br label %getsector

if.end76:                                         ; preds = %land.lhs.true73, %if.end71
  %54 = load i32, i32* %c, align 4
  %cmp77 = icmp eq i32 %54, 1
  br i1 %cmp77, label %land.lhs.true78, label %if.end81

land.lhs.true78:                                  ; preds = %if.end76
  %55 = load i32, i32* %d, align 4
  %cmp79 = icmp eq i32 %55, -1
  br i1 %cmp79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %land.lhs.true78
  store i32 -1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  br label %getsector

if.end81:                                         ; preds = %land.lhs.true78, %if.end76
  store i32 -1, i32* %dx, align 4
  store i32 -1, i32* %dy, align 4
  br label %getsector

getsector:                                        ; preds = %if.end81, %if.then80, %if.then75, %if.then70, %if.then65, %if.then60, %if.then55, %if.then50, %if.then45
  %56 = load i32, i32* %x, align 4
  %57 = load i32, i32* %dx, align 4
  %add = add nsw i32 %56, %57
  store i32 %add, i32* %x, align 4
  %58 = load i32, i32* %y, align 4
  %59 = load i32, i32* %dy, align 4
  %add82 = add nsw i32 %58, %59
  store i32 %add82, i32* %y, align 4
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %y, align 4
  %call83 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %60, i32 %61)
  store i32 %call83, i32* %index1, align 4
  %62 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %63 = load i32, i32* %index1, align 4
  %idxprom = sext i32 %63 to i64
  %arrayidx = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %62, i64 %idxprom
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %64 = load i16, i16* %fillnum, align 2
  %conv84 = zext i16 %64 to i32
  %fillnum85 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %65 = load i16, i16* %fillnum85, align 2
  %conv86 = zext i16 %65 to i32
  %cmp87 = icmp eq i32 %conv84, %conv86
  br i1 %cmp87, label %if.then88, label %if.end98

if.then88:                                        ; preds = %getsector
  %66 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %67 = load i32, i32* %index1, align 4
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %66, i64 %idxprom89
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx90, i32 0, i32 1
  %68 = load i16, i16* %num, align 2
  %conv91 = zext i16 %68 to i32
  %69 = load i32, i32* %i, align 4
  %cmp92 = icmp eq i32 %conv91, %69
  br i1 %cmp92, label %if.then93, label %if.end97

if.then93:                                        ; preds = %if.then88
  %70 = load i32, i32* %index1, align 4
  %call94 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %70)
  store { <2 x float>, float } %call94, { <2 x float>, float }* %tmp, align 8
  %71 = bitcast { <2 x float>, float }* %tmp to i8*
  %72 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %71, i64 12, i32 4, i1 false)
  %73 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %74 to i64
  %arrayidx96 = getelementptr inbounds %class.rvectort, %class.rvectort* %73, i64 %idxprom95
  %75 = bitcast %class.rvectort* %arrayidx96 to i8*
  %76 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 12, i32 4, i1 false)
  %77 = load i32, i32* %index1, align 4
  store i32 %77, i32* %index, align 4
  br label %for.inc

if.end97:                                         ; preds = %if.then88
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %getsector
  %78 = load i32, i32* %index, align 4
  %79 = load i32, i32* %yoffset, align 4
  %sub99 = sub nsw i32 %78, %79
  %sub100 = sub nsw i32 %sub99, 1
  store i32 %sub100, i32* %index1, align 4
  %80 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %81 = load i32, i32* %index1, align 4
  %idxprom101 = sext i32 %81 to i64
  %arrayidx102 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %80, i64 %idxprom101
  %fillnum103 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx102, i32 0, i32 0
  %82 = load i16, i16* %fillnum103, align 2
  %conv104 = zext i16 %82 to i32
  %fillnum105 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %83 = load i16, i16* %fillnum105, align 2
  %conv106 = zext i16 %83 to i32
  %cmp107 = icmp eq i32 %conv104, %conv106
  br i1 %cmp107, label %if.then108, label %if.end121

if.then108:                                       ; preds = %if.end98
  %84 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %85 = load i32, i32* %index1, align 4
  %idxprom109 = sext i32 %85 to i64
  %arrayidx110 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %84, i64 %idxprom109
  %num111 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx110, i32 0, i32 1
  %86 = load i16, i16* %num111, align 2
  %conv112 = zext i16 %86 to i32
  %87 = load i32, i32* %i, align 4
  %cmp113 = icmp eq i32 %conv112, %87
  br i1 %cmp113, label %if.then114, label %if.end120

if.then114:                                       ; preds = %if.then108
  %88 = load i32, i32* %index1, align 4
  %call116 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %88)
  store { <2 x float>, float } %call116, { <2 x float>, float }* %tmp117, align 8
  %89 = bitcast { <2 x float>, float }* %tmp117 to i8*
  %90 = bitcast %class.rvectort* %ref.tmp115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %89, i64 12, i32 4, i1 false)
  %91 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %92 to i64
  %arrayidx119 = getelementptr inbounds %class.rvectort, %class.rvectort* %91, i64 %idxprom118
  %93 = bitcast %class.rvectort* %arrayidx119 to i8*
  %94 = bitcast %class.rvectort* %ref.tmp115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 12, i32 4, i1 false)
  %95 = load i32, i32* %index1, align 4
  store i32 %95, i32* %index, align 4
  br label %for.inc

if.end120:                                        ; preds = %if.then108
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end98
  %96 = load i32, i32* %index1, align 4
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %index1, align 4
  %97 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %98 = load i32, i32* %index1, align 4
  %idxprom122 = sext i32 %98 to i64
  %arrayidx123 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %97, i64 %idxprom122
  %fillnum124 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx123, i32 0, i32 0
  %99 = load i16, i16* %fillnum124, align 2
  %conv125 = zext i16 %99 to i32
  %fillnum126 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %100 = load i16, i16* %fillnum126, align 2
  %conv127 = zext i16 %100 to i32
  %cmp128 = icmp eq i32 %conv125, %conv127
  br i1 %cmp128, label %if.then129, label %if.end142

if.then129:                                       ; preds = %if.end121
  %101 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %102 = load i32, i32* %index1, align 4
  %idxprom130 = sext i32 %102 to i64
  %arrayidx131 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %101, i64 %idxprom130
  %num132 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx131, i32 0, i32 1
  %103 = load i16, i16* %num132, align 2
  %conv133 = zext i16 %103 to i32
  %104 = load i32, i32* %i, align 4
  %cmp134 = icmp eq i32 %conv133, %104
  br i1 %cmp134, label %if.then135, label %if.end141

if.then135:                                       ; preds = %if.then129
  %105 = load i32, i32* %index1, align 4
  %call137 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %105)
  store { <2 x float>, float } %call137, { <2 x float>, float }* %tmp138, align 8
  %106 = bitcast { <2 x float>, float }* %tmp138 to i8*
  %107 = bitcast %class.rvectort* %ref.tmp136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %106, i64 12, i32 4, i1 false)
  %108 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %109 to i64
  %arrayidx140 = getelementptr inbounds %class.rvectort, %class.rvectort* %108, i64 %idxprom139
  %110 = bitcast %class.rvectort* %arrayidx140 to i8*
  %111 = bitcast %class.rvectort* %ref.tmp136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %111, i64 12, i32 4, i1 false)
  %112 = load i32, i32* %index1, align 4
  store i32 %112, i32* %index, align 4
  br label %for.inc

if.end141:                                        ; preds = %if.then129
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end121
  %113 = load i32, i32* %index1, align 4
  %inc143 = add nsw i32 %113, 1
  store i32 %inc143, i32* %index1, align 4
  %114 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %115 = load i32, i32* %index1, align 4
  %idxprom144 = sext i32 %115 to i64
  %arrayidx145 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %114, i64 %idxprom144
  %fillnum146 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx145, i32 0, i32 0
  %116 = load i16, i16* %fillnum146, align 2
  %conv147 = zext i16 %116 to i32
  %fillnum148 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %117 = load i16, i16* %fillnum148, align 2
  %conv149 = zext i16 %117 to i32
  %cmp150 = icmp eq i32 %conv147, %conv149
  br i1 %cmp150, label %if.then151, label %if.end164

if.then151:                                       ; preds = %if.end142
  %118 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %119 = load i32, i32* %index1, align 4
  %idxprom152 = sext i32 %119 to i64
  %arrayidx153 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %118, i64 %idxprom152
  %num154 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx153, i32 0, i32 1
  %120 = load i16, i16* %num154, align 2
  %conv155 = zext i16 %120 to i32
  %121 = load i32, i32* %i, align 4
  %cmp156 = icmp eq i32 %conv155, %121
  br i1 %cmp156, label %if.then157, label %if.end163

if.then157:                                       ; preds = %if.then151
  %122 = load i32, i32* %index1, align 4
  %call159 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %122)
  store { <2 x float>, float } %call159, { <2 x float>, float }* %tmp160, align 8
  %123 = bitcast { <2 x float>, float }* %tmp160 to i8*
  %124 = bitcast %class.rvectort* %ref.tmp158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %123, i64 12, i32 4, i1 false)
  %125 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %126 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %126 to i64
  %arrayidx162 = getelementptr inbounds %class.rvectort, %class.rvectort* %125, i64 %idxprom161
  %127 = bitcast %class.rvectort* %arrayidx162 to i8*
  %128 = bitcast %class.rvectort* %ref.tmp158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 12, i32 4, i1 false)
  %129 = load i32, i32* %index1, align 4
  store i32 %129, i32* %index, align 4
  br label %for.inc

if.end163:                                        ; preds = %if.then151
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end142
  %130 = load i32, i32* %index, align 4
  %sub165 = sub nsw i32 %130, 1
  store i32 %sub165, i32* %index1, align 4
  %131 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %132 = load i32, i32* %index1, align 4
  %idxprom166 = sext i32 %132 to i64
  %arrayidx167 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %131, i64 %idxprom166
  %fillnum168 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx167, i32 0, i32 0
  %133 = load i16, i16* %fillnum168, align 2
  %conv169 = zext i16 %133 to i32
  %fillnum170 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %134 = load i16, i16* %fillnum170, align 2
  %conv171 = zext i16 %134 to i32
  %cmp172 = icmp eq i32 %conv169, %conv171
  br i1 %cmp172, label %if.then173, label %if.end186

if.then173:                                       ; preds = %if.end164
  %135 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %136 = load i32, i32* %index1, align 4
  %idxprom174 = sext i32 %136 to i64
  %arrayidx175 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %135, i64 %idxprom174
  %num176 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx175, i32 0, i32 1
  %137 = load i16, i16* %num176, align 2
  %conv177 = zext i16 %137 to i32
  %138 = load i32, i32* %i, align 4
  %cmp178 = icmp eq i32 %conv177, %138
  br i1 %cmp178, label %if.then179, label %if.end185

if.then179:                                       ; preds = %if.then173
  %139 = load i32, i32* %index1, align 4
  %call181 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %139)
  store { <2 x float>, float } %call181, { <2 x float>, float }* %tmp182, align 8
  %140 = bitcast { <2 x float>, float }* %tmp182 to i8*
  %141 = bitcast %class.rvectort* %ref.tmp180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %140, i64 12, i32 4, i1 false)
  %142 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %143 to i64
  %arrayidx184 = getelementptr inbounds %class.rvectort, %class.rvectort* %142, i64 %idxprom183
  %144 = bitcast %class.rvectort* %arrayidx184 to i8*
  %145 = bitcast %class.rvectort* %ref.tmp180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* %145, i64 12, i32 4, i1 false)
  %146 = load i32, i32* %index1, align 4
  store i32 %146, i32* %index, align 4
  br label %for.inc

if.end185:                                        ; preds = %if.then173
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end164
  %147 = load i32, i32* %index, align 4
  %add187 = add nsw i32 %147, 1
  store i32 %add187, i32* %index1, align 4
  %148 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %149 = load i32, i32* %index1, align 4
  %idxprom188 = sext i32 %149 to i64
  %arrayidx189 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %148, i64 %idxprom188
  %fillnum190 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx189, i32 0, i32 0
  %150 = load i16, i16* %fillnum190, align 2
  %conv191 = zext i16 %150 to i32
  %fillnum192 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %151 = load i16, i16* %fillnum192, align 2
  %conv193 = zext i16 %151 to i32
  %cmp194 = icmp eq i32 %conv191, %conv193
  br i1 %cmp194, label %if.then195, label %if.end208

if.then195:                                       ; preds = %if.end186
  %152 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %153 = load i32, i32* %index1, align 4
  %idxprom196 = sext i32 %153 to i64
  %arrayidx197 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %152, i64 %idxprom196
  %num198 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx197, i32 0, i32 1
  %154 = load i16, i16* %num198, align 2
  %conv199 = zext i16 %154 to i32
  %155 = load i32, i32* %i, align 4
  %cmp200 = icmp eq i32 %conv199, %155
  br i1 %cmp200, label %if.then201, label %if.end207

if.then201:                                       ; preds = %if.then195
  %156 = load i32, i32* %index1, align 4
  %call203 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %156)
  store { <2 x float>, float } %call203, { <2 x float>, float }* %tmp204, align 8
  %157 = bitcast { <2 x float>, float }* %tmp204 to i8*
  %158 = bitcast %class.rvectort* %ref.tmp202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %157, i64 12, i32 4, i1 false)
  %159 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %160 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %160 to i64
  %arrayidx206 = getelementptr inbounds %class.rvectort, %class.rvectort* %159, i64 %idxprom205
  %161 = bitcast %class.rvectort* %arrayidx206 to i8*
  %162 = bitcast %class.rvectort* %ref.tmp202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 12, i32 4, i1 false)
  %163 = load i32, i32* %index1, align 4
  store i32 %163, i32* %index, align 4
  br label %for.inc

if.end207:                                        ; preds = %if.then195
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end186
  %164 = load i32, i32* %index, align 4
  %165 = load i32, i32* %yoffset, align 4
  %add209 = add nsw i32 %164, %165
  %sub210 = sub nsw i32 %add209, 1
  store i32 %sub210, i32* %index1, align 4
  %166 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %167 = load i32, i32* %index1, align 4
  %idxprom211 = sext i32 %167 to i64
  %arrayidx212 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %166, i64 %idxprom211
  %fillnum213 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx212, i32 0, i32 0
  %168 = load i16, i16* %fillnum213, align 2
  %conv214 = zext i16 %168 to i32
  %fillnum215 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %169 = load i16, i16* %fillnum215, align 2
  %conv216 = zext i16 %169 to i32
  %cmp217 = icmp eq i32 %conv214, %conv216
  br i1 %cmp217, label %if.then218, label %if.end231

if.then218:                                       ; preds = %if.end208
  %170 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %171 = load i32, i32* %index1, align 4
  %idxprom219 = sext i32 %171 to i64
  %arrayidx220 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %170, i64 %idxprom219
  %num221 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx220, i32 0, i32 1
  %172 = load i16, i16* %num221, align 2
  %conv222 = zext i16 %172 to i32
  %173 = load i32, i32* %i, align 4
  %cmp223 = icmp eq i32 %conv222, %173
  br i1 %cmp223, label %if.then224, label %if.end230

if.then224:                                       ; preds = %if.then218
  %174 = load i32, i32* %index1, align 4
  %call226 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %174)
  store { <2 x float>, float } %call226, { <2 x float>, float }* %tmp227, align 8
  %175 = bitcast { <2 x float>, float }* %tmp227 to i8*
  %176 = bitcast %class.rvectort* %ref.tmp225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %175, i64 12, i32 4, i1 false)
  %177 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %178 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %178 to i64
  %arrayidx229 = getelementptr inbounds %class.rvectort, %class.rvectort* %177, i64 %idxprom228
  %179 = bitcast %class.rvectort* %arrayidx229 to i8*
  %180 = bitcast %class.rvectort* %ref.tmp225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %179, i8* %180, i64 12, i32 4, i1 false)
  %181 = load i32, i32* %index1, align 4
  store i32 %181, i32* %index, align 4
  br label %for.inc

if.end230:                                        ; preds = %if.then218
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end208
  %182 = load i32, i32* %index1, align 4
  %inc232 = add nsw i32 %182, 1
  store i32 %inc232, i32* %index1, align 4
  %183 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %184 = load i32, i32* %index1, align 4
  %idxprom233 = sext i32 %184 to i64
  %arrayidx234 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %183, i64 %idxprom233
  %fillnum235 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx234, i32 0, i32 0
  %185 = load i16, i16* %fillnum235, align 2
  %conv236 = zext i16 %185 to i32
  %fillnum237 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %186 = load i16, i16* %fillnum237, align 2
  %conv238 = zext i16 %186 to i32
  %cmp239 = icmp eq i32 %conv236, %conv238
  br i1 %cmp239, label %if.then240, label %if.end253

if.then240:                                       ; preds = %if.end231
  %187 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %188 = load i32, i32* %index1, align 4
  %idxprom241 = sext i32 %188 to i64
  %arrayidx242 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %187, i64 %idxprom241
  %num243 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx242, i32 0, i32 1
  %189 = load i16, i16* %num243, align 2
  %conv244 = zext i16 %189 to i32
  %190 = load i32, i32* %i, align 4
  %cmp245 = icmp eq i32 %conv244, %190
  br i1 %cmp245, label %if.then246, label %if.end252

if.then246:                                       ; preds = %if.then240
  %191 = load i32, i32* %index1, align 4
  %call248 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %191)
  store { <2 x float>, float } %call248, { <2 x float>, float }* %tmp249, align 8
  %192 = bitcast { <2 x float>, float }* %tmp249 to i8*
  %193 = bitcast %class.rvectort* %ref.tmp247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %192, i64 12, i32 4, i1 false)
  %194 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %195 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %195 to i64
  %arrayidx251 = getelementptr inbounds %class.rvectort, %class.rvectort* %194, i64 %idxprom250
  %196 = bitcast %class.rvectort* %arrayidx251 to i8*
  %197 = bitcast %class.rvectort* %ref.tmp247 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %196, i8* %197, i64 12, i32 4, i1 false)
  %198 = load i32, i32* %index1, align 4
  store i32 %198, i32* %index, align 4
  br label %for.inc

if.end252:                                        ; preds = %if.then240
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end231
  %199 = load i32, i32* %index1, align 4
  %inc254 = add nsw i32 %199, 1
  store i32 %inc254, i32* %index1, align 4
  %200 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %201 = load i32, i32* %index1, align 4
  %idxprom255 = sext i32 %201 to i64
  %arrayidx256 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %200, i64 %idxprom255
  %fillnum257 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx256, i32 0, i32 0
  %202 = load i16, i16* %fillnum257, align 2
  %conv258 = zext i16 %202 to i32
  %fillnum259 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %203 = load i16, i16* %fillnum259, align 2
  %conv260 = zext i16 %203 to i32
  %cmp261 = icmp eq i32 %conv258, %conv260
  br i1 %cmp261, label %if.then262, label %if.end275

if.then262:                                       ; preds = %if.end253
  %204 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %205 = load i32, i32* %index1, align 4
  %idxprom263 = sext i32 %205 to i64
  %arrayidx264 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %204, i64 %idxprom263
  %num265 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx264, i32 0, i32 1
  %206 = load i16, i16* %num265, align 2
  %conv266 = zext i16 %206 to i32
  %207 = load i32, i32* %i, align 4
  %cmp267 = icmp eq i32 %conv266, %207
  br i1 %cmp267, label %if.then268, label %if.end274

if.then268:                                       ; preds = %if.then262
  %208 = load i32, i32* %index1, align 4
  %call270 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %208)
  store { <2 x float>, float } %call270, { <2 x float>, float }* %tmp271, align 8
  %209 = bitcast { <2 x float>, float }* %tmp271 to i8*
  %210 = bitcast %class.rvectort* %ref.tmp269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* %209, i64 12, i32 4, i1 false)
  %211 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %212 to i64
  %arrayidx273 = getelementptr inbounds %class.rvectort, %class.rvectort* %211, i64 %idxprom272
  %213 = bitcast %class.rvectort* %arrayidx273 to i8*
  %214 = bitcast %class.rvectort* %ref.tmp269 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 12, i32 4, i1 false)
  %215 = load i32, i32* %index1, align 4
  store i32 %215, i32* %index, align 4
  br label %for.inc

if.end274:                                        ; preds = %if.then262
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.end253
  %216 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %isnull = icmp eq %class.rvectort* %216, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end275
  %217 = bitcast %class.rvectort* %216 to i8*
  call void @_ZdaPv(i8* %217) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end275
  store i1 false, i1* %retval, align 1
  br label %return

for.inc:                                          ; preds = %if.then268, %if.then246, %if.then224, %if.then201, %if.then179, %if.then157, %if.then135, %if.then114, %if.then93
  %218 = load i32, i32* %i, align 4
  %dec = add nsw i32 %218, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %startp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo, i32 0, i32 0
  %219 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %arrayidx276 = getelementptr inbounds %class.rvectort, %class.rvectort* %219, i64 0
  %220 = bitcast %class.rvectort* %arrayidx276 to i8*
  %221 = bitcast %class.rvectort* %startp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %220, i8* %221, i64 12, i32 4, i1 false)
  %createwayinfo277 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %finishp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo277, i32 0, i32 1
  %222 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %223 = load i32, i32* %length, align 4
  %sub278 = sub nsw i32 %223, 1
  %idxprom279 = sext i32 %sub278 to i64
  %arrayidx280 = getelementptr inbounds %class.rvectort, %class.rvectort* %222, i64 %idxprom279
  %224 = bitcast %class.rvectort* %arrayidx280 to i8*
  %225 = bitcast %class.rvectort* %finishp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %224, i8* %225, i64 12, i32 4, i1 false)
  %226 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %226, i32 0, i32 0
  store i8 1, i8* %flexist, align 8
  %227 = load %class.rvectort*, %class.rvectort** %wayarp, align 8
  %228 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp281 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %228, i32 0, i32 1
  store %class.rvectort* %227, %class.rvectort** %wayarp281, align 8
  %229 = load i32, i32* %length, align 4
  %230 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %230, i32 0, i32 2
  store i32 %229, i32* %wayarsize, align 8
  %231 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %231, i32 0, i32 3
  store i8 0, i8* %flcorrect, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %delete.end
  %232 = load i1, i1* %retval, align 1
  ret i1 %232

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val282 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val282
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj8wayexistEiiii(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %endx.addr = alloca i32, align 4
  %endy.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %endx, i32* %endx.addr, align 4
  store i32 %endy, i32* %endy.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %startx.addr, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %call = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %0, i32 %1)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %endx.addr, align 4
  %3 = load i32, i32* %endy.addr, align 4
  %call2 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %2, i32 %3)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %endx.addr, align 4
  %5 = load i32, i32* %endy.addr, align 4
  %call3 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %4, i32 %5)
  %6 = load i16, i16* %call3, align 2
  %conv = sext i16 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i32, i32* %startx.addr, align 4
  %8 = load i32, i32* %endx.addr, align 4
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %9 = load i32, i32* %starty.addr, align 4
  %10 = load i32, i32* %endy.addr, align 4
  %cmp7 = icmp eq i32 %9, %10
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %11 = load i32, i32* %startx.addr, align 4
  %12 = load i32, i32* %starty.addr, align 4
  %13 = load i32, i32* %endx.addr, align 4
  %14 = load i32, i32* %endy.addr, align 4
  %call10 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this1, i32 %11, i32 %12, i32 %13, i32 %14)
  store i1 %call10, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %15 = load i1, i1* %retval, align 1
  ret i1 %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %0 = load i16*, i16** %maparp, align 8
  %1 = load i32, i32* %y.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %2 = load i32, i32* %shift, align 8
  %shl = shl i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %or = or i32 %shl, %3
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  ret i16* %arrayidx
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj* %this, %class.rvectort* dereferenceable(12) %startp, %class.rvectort* dereferenceable(12) %finishp, i1 zeroext %flcorrect, %struct.wayinfot* dereferenceable(24) %wayinfo) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startp.addr = alloca %class.rvectort*, align 8
  %finishp.addr = alloca %class.rvectort*, align 8
  %flcorrect.addr = alloca i8, align 1
  %wayinfo.addr = alloca %struct.wayinfot*, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %flcorrectend = alloca i8, align 1
  %ref.tmp = alloca %class.rvectort, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store %class.rvectort* %startp, %class.rvectort** %startp.addr, align 8
  store %class.rvectort* %finishp, %class.rvectort** %finishp.addr, align 8
  %frombool = zext i1 %flcorrect to i8
  store i8 %frombool, i8* %flcorrect.addr, align 1
  store %struct.wayinfot* %wayinfo, %struct.wayinfot** %wayinfo.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load %class.rvectort*, %class.rvectort** %startp.addr, align 8
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %startp2 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo, i32 0, i32 0
  %1 = bitcast %class.rvectort* %startp2 to i8*
  %2 = bitcast %class.rvectort* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 12, i32 4, i1 false)
  %3 = load %class.rvectort*, %class.rvectort** %finishp.addr, align 8
  %createwayinfo3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %finishp4 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo3, i32 0, i32 1
  %4 = bitcast %class.rvectort* %finishp4 to i8*
  %5 = bitcast %class.rvectort* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 4, i1 false)
  %6 = load i8, i8* %flcorrect.addr, align 1
  %tobool = trunc i8 %6 to i1
  %createwayinfo5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %flcorrect6 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo5, i32 0, i32 2
  %frombool7 = zext i1 %tobool to i8
  store i8 %frombool7, i8* %flcorrect6, align 8
  %7 = load %class.rvectort*, %class.rvectort** %startp.addr, align 8
  %x = getelementptr inbounds %class.rvectort, %class.rvectort* %7, i32 0, i32 0
  %8 = load float, float* %x, align 4
  %call = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %this1, float %8)
  store i32 %call, i32* %startx, align 4
  %9 = load %class.rvectort*, %class.rvectort** %startp.addr, align 8
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %9, i32 0, i32 2
  %10 = load float, float* %z, align 4
  %call8 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %this1, float %10)
  store i32 %call8, i32* %starty, align 4
  %11 = load %class.rvectort*, %class.rvectort** %finishp.addr, align 8
  %x9 = getelementptr inbounds %class.rvectort, %class.rvectort* %11, i32 0, i32 0
  %12 = load float, float* %x9, align 4
  %call10 = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %this1, float %12)
  store i32 %call10, i32* %endx, align 4
  %13 = load %class.rvectort*, %class.rvectort** %finishp.addr, align 8
  %z11 = getelementptr inbounds %class.rvectort, %class.rvectort* %13, i32 0, i32 2
  %14 = load float, float* %z11, align 4
  %call12 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %this1, float %14)
  store i32 %call12, i32* %endy, align 4
  store i8 0, i8* %flcorrectend, align 1
  %15 = load i32, i32* %startx, align 4
  %16 = load i32, i32* %starty, align 4
  %call13 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %15, i32 %16)
  br i1 %call13, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %17 = load i32, i32* %endx, align 4
  %18 = load i32, i32* %endy, align 4
  %call14 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %17, i32 %18)
  br i1 %call14, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %19 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %19, i32 0, i32 0
  store i8 0, i8* %flexist, align 8
  %20 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %20, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp, align 8
  %21 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %21, i32 0, i32 2
  store i32 0, i32* %wayarsize, align 8
  %22 = load i8, i8* %flcorrectend, align 1
  %tobool15 = trunc i8 %22 to i1
  %23 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect16 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %23, i32 0, i32 3
  %frombool17 = zext i1 %tobool15 to i8
  store i8 %frombool17, i8* %flcorrect16, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %24 = load i32, i32* %endx, align 4
  %25 = load i32, i32* %endy, align 4
  %call18 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %24, i32 %25)
  %26 = load i16, i16* %call18, align 2
  %conv = sext i16 %26 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then19, label %if.end47

if.then19:                                        ; preds = %if.end
  %27 = load i8, i8* %flcorrect.addr, align 1
  %tobool20 = trunc i8 %27 to i1
  %conv21 = zext i1 %tobool20 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  %28 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist24 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %28, i32 0, i32 0
  store i8 0, i8* %flexist24, align 8
  %29 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp25 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %29, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp25, align 8
  %30 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize26 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %30, i32 0, i32 2
  store i32 0, i32* %wayarsize26, align 8
  %31 = load i8, i8* %flcorrectend, align 1
  %tobool27 = trunc i8 %31 to i1
  %32 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect28 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %32, i32 0, i32 3
  %frombool29 = zext i1 %tobool27 to i8
  store i8 %frombool29, i8* %flcorrect28, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %if.then19
  %33 = load i32, i32* %endx, align 4
  %34 = load i32, i32* %endy, align 4
  %call30 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this1, i32 %33, i32 %34, i32* dereferenceable(4) %endx, i32* dereferenceable(4) %endy)
  %conv31 = zext i1 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then33, label %if.else40

if.then33:                                        ; preds = %if.else
  %35 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist34 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %35, i32 0, i32 0
  store i8 0, i8* %flexist34, align 8
  %36 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp35 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %36, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp35, align 8
  %37 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize36 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %37, i32 0, i32 2
  store i32 0, i32* %wayarsize36, align 8
  %38 = load i8, i8* %flcorrectend, align 1
  %tobool37 = trunc i8 %38 to i1
  %39 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect38 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %39, i32 0, i32 3
  %frombool39 = zext i1 %tobool37 to i8
  store i8 %frombool39, i8* %flcorrect38, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.else40:                                        ; preds = %if.else
  store i8 1, i8* %flcorrectend, align 1
  %40 = load i32, i32* %endx, align 4
  %41 = load i32, i32* %endy, align 4
  %call41 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %40, i32 %41)
  %call42 = call { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this1, i32 %call41)
  store { <2 x float>, float } %call42, { <2 x float>, float }* %tmp, align 8
  %42 = bitcast { <2 x float>, float }* %tmp to i8*
  %43 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %42, i64 12, i32 4, i1 false)
  %createwayinfo43 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %finishp44 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo43, i32 0, i32 1
  %44 = bitcast %class.rvectort* %finishp44 to i8*
  %45 = bitcast %class.rvectort* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 12, i32 4, i1 false)
  br label %if.end45

if.end45:                                         ; preds = %if.else40
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end
  %46 = load i32, i32* %startx, align 4
  %47 = load i32, i32* %endx, align 4
  %cmp48 = icmp eq i32 %46, %47
  br i1 %cmp48, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %if.end47
  %48 = load i32, i32* %starty, align 4
  %49 = load i32, i32* %endy, align 4
  %cmp49 = icmp eq i32 %48, %49
  br i1 %cmp49, label %if.then50, label %if.end63

if.then50:                                        ; preds = %land.lhs.true
  %50 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist51 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %50, i32 0, i32 0
  store i8 1, i8* %flexist51, align 8
  %call52 = call i8* @_Znam(i64 24) #11
  %51 = bitcast i8* %call52 to %class.rvectort*
  %arrayctor.end = getelementptr inbounds %class.rvectort, %class.rvectort* %51, i64 2
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %if.then50
  %arrayctor.cur = phi %class.rvectort* [ %51, %if.then50 ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN8rvectortC2Ev(%class.rvectort* %arrayctor.cur)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %class.rvectort, %class.rvectort* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %class.rvectort* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %invoke.cont
  %52 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp53 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %52, i32 0, i32 1
  store %class.rvectort* %51, %class.rvectort** %wayarp53, align 8
  %53 = load %class.rvectort*, %class.rvectort** %startp.addr, align 8
  %54 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp54 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %54, i32 0, i32 1
  %55 = load %class.rvectort*, %class.rvectort** %wayarp54, align 8
  %arrayidx = getelementptr inbounds %class.rvectort, %class.rvectort* %55, i64 0
  %56 = bitcast %class.rvectort* %arrayidx to i8*
  %57 = bitcast %class.rvectort* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 12, i32 4, i1 false)
  %createwayinfo55 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  %finishp56 = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %createwayinfo55, i32 0, i32 1
  %58 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp57 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %58, i32 0, i32 1
  %59 = load %class.rvectort*, %class.rvectort** %wayarp57, align 8
  %arrayidx58 = getelementptr inbounds %class.rvectort, %class.rvectort* %59, i64 1
  %60 = bitcast %class.rvectort* %arrayidx58 to i8*
  %61 = bitcast %class.rvectort* %finishp56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 12, i32 4, i1 false)
  %62 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize59 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %62, i32 0, i32 2
  store i32 2, i32* %wayarsize59, align 8
  %63 = load i8, i8* %flcorrectend, align 1
  %tobool60 = trunc i8 %63 to i1
  %64 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect61 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %64, i32 0, i32 3
  %frombool62 = zext i1 %tobool60 to i8
  store i8 %frombool62, i8* %flcorrect61, align 4
  store i1 true, i1* %retval, align 1
  br label %return

lpad:                                             ; preds = %arrayctor.loop
  %65 = landingpad { i8*, i32 }
          cleanup
  %66 = extractvalue { i8*, i32 } %65, 0
  store i8* %66, i8** %exn.slot, align 8
  %67 = extractvalue { i8*, i32 } %65, 1
  store i32 %67, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call52) #12
  br label %eh.resume

if.end63:                                         ; preds = %land.lhs.true, %if.end47
  %68 = load i32, i32* %startx, align 4
  %69 = load i32, i32* %starty, align 4
  %70 = load i32, i32* %endx, align 4
  %71 = load i32, i32* %endy, align 4
  %call64 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this1, i32 %68, i32 %69, i32 %70, i32 %71)
  br i1 %call64, label %if.end72, label %if.then65

if.then65:                                        ; preds = %if.end63
  %72 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist66 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %72, i32 0, i32 0
  store i8 0, i8* %flexist66, align 8
  %73 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp67 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %73, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp67, align 8
  %74 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize68 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %74, i32 0, i32 2
  store i32 0, i32* %wayarsize68, align 8
  %75 = load i8, i8* %flcorrectend, align 1
  %tobool69 = trunc i8 %75 to i1
  %76 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect70 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %76, i32 0, i32 3
  %frombool71 = zext i1 %tobool69 to i8
  store i8 %frombool71, i8* %flcorrect70, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end72:                                         ; preds = %if.end63
  %77 = load i8, i8* %flcorrectend, align 1
  %tobool73 = trunc i8 %77 to i1
  %78 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect74 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %78, i32 0, i32 3
  %frombool75 = zext i1 %tobool73 to i8
  store i8 %frombool75, i8* %flcorrect74, align 4
  %79 = load i32, i32* %startx, align 4
  %80 = load i32, i32* %starty, align 4
  %call76 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %79, i32 %80)
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %81 = load i32, i32* %endindex, align 4
  %82 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %call77 = call zeroext i1 @_ZN6wayobj11createwayarEiiR8wayinfot(%class.wayobj* %this1, i32 %call76, i32 %81, %struct.wayinfot* dereferenceable(24) %82)
  br i1 %call77, label %if.end85, label %if.then78

if.then78:                                        ; preds = %if.end72
  %83 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flexist79 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %83, i32 0, i32 0
  store i8 0, i8* %flexist79, align 8
  %84 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarp80 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %84, i32 0, i32 1
  store %class.rvectort* null, %class.rvectort** %wayarp80, align 8
  %85 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %wayarsize81 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %85, i32 0, i32 2
  store i32 0, i32* %wayarsize81, align 8
  %86 = load i8, i8* %flcorrectend, align 1
  %tobool82 = trunc i8 %86 to i1
  %87 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %flcorrect83 = getelementptr inbounds %struct.wayinfot, %struct.wayinfot* %87, i32 0, i32 3
  %frombool84 = zext i1 %tobool82 to i8
  store i8 %frombool84, i8* %flcorrect83, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end85:                                         ; preds = %if.end72
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end85, %if.then78, %if.then65, %arrayctor.cont, %if.then33, %if.then23, %if.then
  %88 = load i1, i1* %retval, align 1
  ret i1 %88

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val86 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val86
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj4getxEf(%class.wayobj* %this, float %x) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca float, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store float %x, float* %x.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load float, float* %x.addr, align 4
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  %1 = load float, float* %xcoef1, align 4
  %mul = fmul float %0, %1
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  %2 = load float, float* %xcoef2, align 8
  %add = fadd float %mul, %2
  %conv = fptosi float %add to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN6wayobj4getyEf(%class.wayobj* %this, float %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %y.addr = alloca float, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store float %y, float* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load float, float* %y.addr, align 4
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  %1 = load float, float* %ycoef1, align 4
  %mul = fmul float %0, %1
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  %2 = load float, float* %ycoef2, align 8
  %add = fadd float %mul, %2
  %conv = fptosi float %add to i32
  ret i32 %conv
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayERK14createwayinfotR8wayinfot(%class.wayobj* %this, %struct.createwayinfot* dereferenceable(28) %createinfo, %struct.wayinfot* dereferenceable(24) %wayinfo) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %createinfo.addr = alloca %struct.createwayinfot*, align 8
  %wayinfo.addr = alloca %struct.wayinfot*, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store %struct.createwayinfot* %createinfo, %struct.createwayinfot** %createinfo.addr, align 8
  store %struct.wayinfot* %wayinfo, %struct.wayinfot** %wayinfo.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load %struct.createwayinfot*, %struct.createwayinfot** %createinfo.addr, align 8
  %startp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %0, i32 0, i32 0
  %1 = load %struct.createwayinfot*, %struct.createwayinfot** %createinfo.addr, align 8
  %finishp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %1, i32 0, i32 1
  %2 = load %struct.createwayinfot*, %struct.createwayinfot** %createinfo.addr, align 8
  %flcorrect = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %2, i32 0, i32 2
  %3 = load i8, i8* %flcorrect, align 4
  %tobool = trunc i8 %3 to i1
  %4 = load %struct.wayinfot*, %struct.wayinfot** %wayinfo.addr, align 8
  %call = call zeroext i1 @_ZN6wayobj9createwayERK8rvectortS2_bR8wayinfot(%class.wayobj* %this1, %class.rvectort* dereferenceable(12) %startp, %class.rvectort* dereferenceable(12) %finishp, i1 zeroext %tobool, %struct.wayinfot* dereferenceable(24) %4)
  ret i1 %call
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy, %struct.waymapcellt** dereferenceable(8) %wayar, i32* dereferenceable(4) %waylength) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %endx.addr = alloca i32, align 4
  %endy.addr = alloca i32, align 4
  %wayar.addr = alloca %struct.waymapcellt**, align 8
  %waylength.addr = alloca i32*, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %endx, i32* %endx.addr, align 4
  store i32 %endy, i32* %endy.addr, align 4
  store %struct.waymapcellt** %wayar, %struct.waymapcellt*** %wayar.addr, align 8
  store i32* %waylength, i32** %waylength.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %startx.addr, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %call = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %0, i32 %1)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %endx.addr, align 4
  %3 = load i32, i32* %endy.addr, align 4
  %call2 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %2, i32 %3)
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* null, %struct.waymapcellt** %4, align 8
  %5 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %5, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %endx.addr, align 4
  %7 = load i32, i32* %endy.addr, align 4
  %call3 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %6, i32 %7)
  %8 = load i16, i16* %call3, align 2
  %conv = sext i16 %8 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* null, %struct.waymapcellt** %9, align 8
  %10 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %10, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load i32, i32* %startx.addr, align 4
  %12 = load i32, i32* %endx.addr, align 4
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %13 = load i32, i32* %starty.addr, align 4
  %14 = load i32, i32* %endy.addr, align 4
  %cmp7 = icmp eq i32 %13, %14
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call noalias i8* @malloc(i64 4) #10
  %15 = bitcast i8* %call9 to %struct.waymapcellt*
  %16 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* %15, %struct.waymapcellt** %16, align 8
  %17 = load i32*, i32** %waylength.addr, align 8
  store i32 1, i32* %17, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end5
  %18 = load i32, i32* %startx.addr, align 4
  %19 = load i32, i32* %starty.addr, align 4
  %20 = load i32, i32* %endx.addr, align 4
  %21 = load i32, i32* %endy.addr, align 4
  %call11 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this1, i32 %18, i32 %19, i32 %20, i32 %21)
  br i1 %call11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end10
  %22 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* null, %struct.waymapcellt** %22, align 8
  %23 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %23, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end10
  %24 = load i32, i32* %startx.addr, align 4
  %25 = load i32, i32* %starty.addr, align 4
  %call14 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %24, i32 %25)
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %26 = load i32, i32* %endindex, align 4
  %27 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  %28 = load i32*, i32** %waylength.addr, align 8
  %call15 = call zeroext i1 @_ZN6wayobj11createwayarEiiRP8point16tRi(%class.wayobj* %this1, i32 %call14, i32 %26, %struct.waymapcellt** dereferenceable(8) %27, i32* dereferenceable(4) %28)
  br i1 %call15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  %29 = load %struct.waymapcellt**, %struct.waymapcellt*** %wayar.addr, align 8
  store %struct.waymapcellt* null, %struct.waymapcellt** %29, align 8
  %30 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %30, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.end13
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then12, %if.then8, %if.then4, %if.then
  %31 = load i1, i1* %retval, align 1
  ret i1 %31
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Library.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init.4()
  call void @__cxx_global_var_init.1.5()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" {
entry:
  call void @_ZN6wayobjC2Ev(%class.wayobj* @way)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1.5() #0 section ".text.startup" {
entry:
  call void @_ZN9regwayobjC2Ev(%class.regwayobj* @regway) #10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9regwayobjC2Ev(%class.regwayobj* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %0 = bitcast %class.regwayobj* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV9regwayobj, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %0, align 8
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6wayobjC2Ev(%class.wayobj* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %createwayinfo = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 15
  call void @_ZN14createwayinfotC2Ev(%struct.createwayinfot* %createwayinfo)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN14createwayinfotC2Ev(%struct.createwayinfot* %this) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.createwayinfot*, align 8
  store %struct.createwayinfot* %this, %struct.createwayinfot** %this.addr, align 8
  %this1 = load %struct.createwayinfot*, %struct.createwayinfot** %this.addr, align 8
  %startp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %this1, i32 0, i32 0
  call void @_ZN8rvectortC2Ev(%class.rvectort* %startp)
  %finishp = getelementptr inbounds %struct.createwayinfot, %struct.createwayinfot* %this1, i32 0, i32 1
  call void @_ZN8rvectortC2Ev(%class.rvectort* %finishp)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9statinfot5printEv(%struct.statinfot* %this) #0 align 2 {
entry:
  %this.addr = alloca %struct.statinfot*, align 8
  store %struct.statinfot* %this, %struct.statinfot** %this.addr, align 8
  %this1 = load %struct.statinfot*, %struct.statinfot** %this.addr, align 8
  %createregtime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 0
  %0 = load double, double* %createregtime, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), double %0)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %createwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 1
  %1 = load double, double* %createwaytime, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), double %1)
  %wayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 8
  %2 = load i64, i64* %wayqu, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i64 %2)
  %waylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 5
  %3 = load i64, i64* %waylength, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i64 %3)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %createregwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 4
  %4 = load double, double* %createregwaytime, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), double %4)
  %regwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 12
  %5 = load i64, i64* %regwayqu, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i64 %5)
  %regwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 11
  %6 = load i64, i64* %regwaylength, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i64 %6)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %createriverwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 2
  %7 = load double, double* %createriverwaytime, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0), double %7)
  %riverwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 9
  %8 = load i64, i64* %riverwayqu, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i64 %8)
  %riverwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 6
  %9 = load i64, i64* %riverwaylength, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i64 %9)
  %createlandwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 3
  %10 = load double, double* %createlandwaytime, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), double %10)
  %landwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 10
  %11 = load i64, i64* %landwayqu, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), i64 %11)
  %landwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 7
  %12 = load i64, i64* %landwaylength, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0), i64 %12)
  ret void
}

declare i32 @printf(i8*, ...) #7

; Function Attrs: noinline uwtable
define void @_Z15createrandommapiif(i32 %mapsizex, i32 %mapsizey, float %density) #0 {
entry:
  %mapsizex.addr = alloca i32, align 4
  %mapsizey.addr = alloca i32, align 4
  %density.addr = alloca float, align 4
  %mapp = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %mapsizex, i32* %mapsizex.addr, align 4
  store i32 %mapsizey, i32* %mapsizey.addr, align 4
  store float %density, float* %density.addr, align 4
  %0 = load i32, i32* %mapsizex.addr, align 4
  %1 = load i32, i32* %mapsizey.addr, align 4
  %call = call zeroext i1 @_ZN6wayobj7initmapEii(%class.wayobj* @way, i32 %0, i32 %1)
  %2 = load i32, i32* %mapsizex.addr, align 4
  %3 = load i32, i32* %mapsizey.addr, align 4
  %call1 = call zeroext i1 @_ZN9regmngobj7initmapEii(%class.regmngobj* @regmng, i32 %2, i32 %3)
  %4 = load i8*, i8** getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 7), align 8
  store i8* %4, i8** %mapp, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %5 = load i32, i32* %y, align 4
  %6 = load i32, i32* %mapsizey.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %mapsizex.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %9 = load float, float* %density.addr, align 4
  %call5 = call float @_Z8myrandomff(float 0.000000e+00, float %9)
  %cmp6 = fcmp ole float %call5, 1.000000e+00
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %10 = load i8*, i8** %mapp, align 8
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %mapsizex.addr, align 4
  %mul = mul nsw i32 %12, %13
  %add = add nsw i32 %11, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body4
  %14 = load i8*, i8** %mapp, align 8
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %mapsizex.addr, align 4
  %mul7 = mul nsw i32 %16, %17
  %add8 = add nsw i32 %15, %mul7
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  call void @_ZN6wayobj8addpointEii(%class.wayobj* @way, i32 %18, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %x, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %y, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* %y, align 4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #8 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %info = alloca %struct.workinfot, align 4
  %stat = alloca %struct.statinfot, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %i = alloca i32, align 4
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %endx = alloca i32, align 4
  %endy = alloca i32, align 4
  %wayar = alloca %struct.waymapcellt*, align 8
  %waylength = alloca i32, align 4
  %flcreate = alloca i8, align 1
  %reg1num = alloca i32, align 4
  %reg2num = alloca i32, align 4
  %reg1p = alloca %class.regobj*, align 8
  %reg2p = alloca %class.regobj*, align 8
  %wayar59 = alloca %class.regobj**, align 8
  %waylength60 = alloca i32, align 4
  %flcreate61 = alloca i8, align 1
  %startx97 = alloca i32, align 4
  %starty98 = alloca i32, align 4
  %endx99 = alloca i32, align 4
  %endy100 = alloca i32, align 4
  %wayar101 = alloca %struct.pointt*, align 8
  %waylength102 = alloca i32, align 4
  %flcreate103 = alloca i8, align 1
  %movetimear = alloca [256 x i8], align 16
  %j = alloca i32, align 4
  %startx155 = alloca i32, align 4
  %starty156 = alloca i32, align 4
  %endx157 = alloca i32, align 4
  %endy158 = alloca i32, align 4
  %wayar159 = alloca %struct.pointt*, align 8
  %waylength160 = alloca i32, align 4
  %flcreate161 = alloca i8, align 1
  %movetimear162 = alloca [256 x i8], align 16
  %j163 = alloca i32, align 4
  %startx224 = alloca i32, align 4
  %starty225 = alloca i32, align 4
  %endx226 = alloca i32, align 4
  %endy227 = alloca i32, align 4
  %wayar228 = alloca %struct.waymapcellt*, align 8
  %waylength229 = alloca i32, align 4
  %flcreate230 = alloca i8, align 1
  %reg1num262 = alloca i32, align 4
  %reg2num263 = alloca i32, align 4
  %reg1p264 = alloca %class.regobj*, align 8
  %reg2p265 = alloca %class.regobj*, align 8
  %wayar266 = alloca %class.regobj**, align 8
  %waylength267 = alloca i32, align 4
  %flcreate268 = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %t2, align 8
  store i64 0, i64* %t1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %f, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %mapfilename = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %mapfilename, i32 0, i32 0
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %arraydecay)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %regionsize = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %regionsize)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %wayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 2
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %wayqu)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %riverwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 3
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %riverwayqu)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %landwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %landwayqu)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %regwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 5
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %regwayqu)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommaplx = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %randommaplx)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommaply = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 7
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %randommaply)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommapdensity = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), float* %randommapdensity)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommapregionsize = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 9
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %randommapregionsize)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommapwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 10
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %randommapwayqu)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %randommapregwayqu = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 11
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i32* %randommapregwayqu)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %16)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0))
  %mapfilename21 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mapfilename21, i32 0, i32 0
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* %arraydecay22)
  call void @_ZN6wayobj6createEv(%class.wayobj* @way)
  call void @_ZN9regmngobj6createEv(%class.regmngobj* @regmng)
  call void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* @regway, %class.regmngobj* @regmng)
  %mapfilename24 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mapfilename24, i32 0, i32 0
  %call26 = call zeroext i1 @_ZN6wayobj7loadmapEPKc(%class.wayobj* @way, i8* %arraydecay25)
  %mapfilename27 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mapfilename27, i32 0, i32 0
  %call29 = call zeroext i1 @_ZN9regmngobj7loadmapEPKc(%class.regmngobj* @regmng, i8* %arraydecay28)
  call void @_ZN9statinfot4initEv(%struct.statinfot* %stat)
  %regionsize30 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 1
  %17 = load i32, i32* %regionsize30, align 4
  call void @_ZN9regmngobj13createregionsEi(%class.regmngobj* @regmng, i32 %17)
  %createregtime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 0
  store double 0.000000e+00, double* %createregtime, align 8
  %call31 = call i64 @time(i64* null) #10
  store i64 %call31, i64* %t1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %18 = load i32, i32* %i, align 4
  %wayqu32 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 2
  %19 = load i32, i32* %wayqu32, align 4
  %cmp33 = icmp slt i32 %18, %19
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %flcreate, align 1
  store i32 0, i32* %waylength, align 4
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar, align 8
  %20 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 12), align 4
  %call34 = call i32 @_Z8myrandomii(i32 1, i32 %20)
  store i32 %call34, i32* %startx, align 4
  %21 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 13), align 8
  %call35 = call i32 @_Z8myrandomii(i32 1, i32 %21)
  store i32 %call35, i32* %starty, align 4
  %22 = load i32, i32* %startx, align 4
  %23 = load i32, i32* %starty, align 4
  %call36 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* @way, i32 %22, i32 %23, i32* dereferenceable(4) %startx, i32* dereferenceable(4) %starty)
  br i1 %call36, label %if.then37, label %if.end47

if.then37:                                        ; preds = %for.body
  %24 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 12), align 4
  %call38 = call i32 @_Z8myrandomii(i32 1, i32 %24)
  store i32 %call38, i32* %endx, align 4
  %25 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 13), align 8
  %call39 = call i32 @_Z8myrandomii(i32 1, i32 %25)
  store i32 %call39, i32* %endy, align 4
  %26 = load i32, i32* %endx, align 4
  %27 = load i32, i32* %endy, align 4
  %call40 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* @way, i32 %26, i32 %27, i32* dereferenceable(4) %endx, i32* dereferenceable(4) %endy)
  br i1 %call40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then37
  %28 = load i32, i32* %startx, align 4
  %29 = load i32, i32* %starty, align 4
  %30 = load i32, i32* %endx, align 4
  %31 = load i32, i32* %endy, align 4
  %call42 = call zeroext i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* @way, i32 %28, i32 %29, i32 %30, i32 %31, %struct.waymapcellt** dereferenceable(8) %wayar, i32* dereferenceable(4) %waylength)
  %frombool = zext i1 %call42 to i8
  store i8 %frombool, i8* %flcreate, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then37
  %32 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar, align 8
  %tobool44 = icmp ne %struct.waymapcellt* %32, null
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  %33 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar, align 8
  %34 = bitcast %struct.waymapcellt* %33 to i8*
  call void @free(i8* %34) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %for.body
  %35 = load i8, i8* %flcreate, align 1
  %tobool48 = trunc i8 %35 to i1
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %36 = load i32, i32* %waylength, align 4
  %conv = sext i32 %36 to i64
  %waylength50 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 5
  %37 = load i64, i64* %waylength50, align 8
  %add = add nsw i64 %37, %conv
  store i64 %add, i64* %waylength50, align 8
  %wayqu51 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 8
  %38 = load i64, i64* %wayqu51, align 8
  %inc = add nsw i64 %38, 1
  store i64 %inc, i64* %wayqu51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end47
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %39 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %createwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 1
  store double 0.000000e+00, double* %createwaytime, align 8
  %call54 = call i64 @time(i64* null) #10
  store i64 %call54, i64* %t1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc87, %for.end
  %40 = load i32, i32* %i, align 4
  %regwayqu56 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 5
  %41 = load i32, i32* %regwayqu56, align 4
  %cmp57 = icmp slt i32 %40, %41
  br i1 %cmp57, label %for.body58, label %for.end89

for.body58:                                       ; preds = %for.cond55
  %42 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18, i32 4), align 8
  %sub = sub nsw i32 %42, 1
  %call62 = call i32 @_Z7random1i(i32 %sub)
  store i32 %call62, i32* %reg1num, align 4
  %43 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18, i32 4), align 8
  %sub63 = sub nsw i32 %43, 1
  %call64 = call i32 @_Z7random1i(i32 %sub63)
  store i32 %call64, i32* %reg2num, align 4
  %44 = load i32, i32* %reg1num, align 4
  %call65 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18), i32 %44)
  %45 = load %class.regobj*, %class.regobj** %call65, align 8
  store %class.regobj* %45, %class.regobj** %reg1p, align 8
  %46 = load %class.regobj*, %class.regobj** %reg1p, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %46, i32 0, i32 9
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar, i32 0, i32 1
  %47 = load i32, i32* %elemqu, align 8
  %cmp66 = icmp eq i32 %47, 0
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.body58
  br label %for.inc87

if.end68:                                         ; preds = %for.body58
  %48 = load i32, i32* %reg2num, align 4
  %call69 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18), i32 %48)
  %49 = load %class.regobj*, %class.regobj** %call69, align 8
  store %class.regobj* %49, %class.regobj** %reg2p, align 8
  %50 = load %class.regobj*, %class.regobj** %reg2p, align 8
  %nb1ar70 = getelementptr inbounds %class.regobj, %class.regobj* %50, i32 0, i32 9
  %elemqu71 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar70, i32 0, i32 1
  %51 = load i32, i32* %elemqu71, align 8
  %cmp72 = icmp eq i32 %51, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  br label %for.inc87

if.end74:                                         ; preds = %if.end68
  store %class.regobj** null, %class.regobj*** %wayar59, align 8
  store i32 0, i32* %waylength60, align 4
  %52 = load %class.regobj*, %class.regobj** %reg1p, align 8
  %53 = load %class.regobj*, %class.regobj** %reg2p, align 8
  %call75 = call zeroext i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* @regway, %class.regobj* %52, %class.regobj* %53, %class.regobj*** dereferenceable(8) %wayar59, i32* dereferenceable(4) %waylength60)
  %frombool76 = zext i1 %call75 to i8
  store i8 %frombool76, i8* %flcreate61, align 1
  %54 = load %class.regobj**, %class.regobj*** %wayar59, align 8
  %tobool77 = icmp ne %class.regobj** %54, null
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  %55 = load %class.regobj**, %class.regobj*** %wayar59, align 8
  %56 = bitcast %class.regobj** %55 to i8*
  call void @free(i8* %56) #10
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74
  %57 = load i8, i8* %flcreate61, align 1
  %tobool80 = trunc i8 %57 to i1
  br i1 %tobool80, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.end79
  %58 = load i32, i32* %waylength60, align 4
  %conv82 = sext i32 %58 to i64
  %regwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 11
  %59 = load i64, i64* %regwaylength, align 8
  %add83 = add nsw i64 %59, %conv82
  store i64 %add83, i64* %regwaylength, align 8
  %regwayqu84 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 12
  %60 = load i64, i64* %regwayqu84, align 8
  %inc85 = add nsw i64 %60, 1
  store i64 %inc85, i64* %regwayqu84, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end79
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86, %if.then73, %if.then67
  %61 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %61, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond55

for.end89:                                        ; preds = %for.cond55
  %createregwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 4
  store double 0.000000e+00, double* %createregwaytime, align 8
  call void @_ZN9regwayobj7destroyEv(%class.regwayobj* @regway)
  call void @_ZN9regmngobj7destroyEv(%class.regmngobj* @regmng)
  call void @_ZN6wayobj7destroyEv(%class.wayobj* @way)
  call void @_ZN7way2obj6createEv(%class.way2obj* @way2)
  %mapfilename90 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 0
  %arraydecay91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %mapfilename90, i32 0, i32 0
  %call92 = call zeroext i1 @_ZN7way2obj7loadmapEPKc(%class.way2obj* @way2, i8* %arraydecay91)
  store i32 0, i32* %i, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc147, %for.end89
  %62 = load i32, i32* %i, align 4
  %riverwayqu94 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 3
  %63 = load i32, i32* %riverwayqu94, align 4
  %cmp95 = icmp slt i32 %62, %63
  br i1 %cmp95, label %for.body96, label %for.end149

for.body96:                                       ; preds = %for.cond93
  store i32 0, i32* %j, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc109, %for.body96
  %64 = load i32, i32* %j, align 4
  %cmp105 = icmp slt i32 %64, 256
  br i1 %cmp105, label %for.body106, label %for.end111

for.body106:                                      ; preds = %for.cond104
  %65 = load i32, i32* %j, align 4
  %conv107 = trunc i32 %65 to i8
  %66 = load i32, i32* %j, align 4
  %idxprom = sext i32 %66 to i64
  %arrayidx108 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom
  store i8 %conv107, i8* %arrayidx108, align 1
  br label %for.inc109

for.inc109:                                       ; preds = %for.body106
  %67 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %67, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond104

for.end111:                                       ; preds = %for.cond104
  %arrayidx112 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 0
  store i8 -1, i8* %arrayidx112, align 16
  %arrayidx113 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 1
  store i8 1, i8* %arrayidx113, align 1
  %arrayidx114 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 2
  store i8 -1, i8* %arrayidx114, align 2
  store i8 0, i8* %flcreate103, align 1
  store i32 0, i32* %waylength102, align 4
  store %struct.pointt* null, %struct.pointt** %wayar101, align 8
  %68 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 17), align 8
  %sub115 = sub nsw i32 %68, 1
  %call116 = call i32 @_Z7irandomii(i32 1, i32 %sub115)
  store i32 %call116, i32* %startx97, align 4
  %69 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 18), align 4
  %sub117 = sub nsw i32 %69, 1
  %call118 = call i32 @_Z7irandomii(i32 1, i32 %sub117)
  store i32 %call118, i32* %starty98, align 4
  %70 = load i32, i32* %startx97, align 4
  %71 = load i32, i32* %starty98, align 4
  %call119 = call zeroext i8 @_ZN7way2obj10getterrainEii(%class.way2obj* @way2, i32 %70, i32 %71)
  %idxprom120 = zext i8 %call119 to i64
  %arrayidx121 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom120
  %72 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %72 to i32
  %cmp123 = icmp sgt i32 %conv122, 0
  br i1 %cmp123, label %if.then124, label %if.end139

if.then124:                                       ; preds = %for.end111
  %73 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 17), align 8
  %sub125 = sub nsw i32 %73, 1
  %call126 = call i32 @_Z7irandomii(i32 1, i32 %sub125)
  store i32 %call126, i32* %endx99, align 4
  %74 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 18), align 4
  %sub127 = sub nsw i32 %74, 1
  %call128 = call i32 @_Z7irandomii(i32 1, i32 %sub127)
  store i32 %call128, i32* %endy100, align 4
  %75 = load i32, i32* %startx97, align 4
  %76 = load i32, i32* %starty98, align 4
  %call129 = call zeroext i8 @_ZN7way2obj10getterrainEii(%class.way2obj* @way2, i32 %75, i32 %76)
  %idxprom130 = zext i8 %call129 to i64
  %arrayidx131 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom130
  %77 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %77 to i32
  %cmp133 = icmp sgt i32 %conv132, 0
  br i1 %cmp133, label %if.then134, label %if.end138

if.then134:                                       ; preds = %if.then124
  %78 = load i32, i32* %startx97, align 4
  %79 = load i32, i32* %starty98, align 4
  %80 = load i32, i32* %endx99, align 4
  %81 = load i32, i32* %endy100, align 4
  %arraydecay135 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i32 0, i32 0
  %call136 = call zeroext i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* @way2, i32 %78, i32 %79, i32 %80, i32 %81, i8* %arraydecay135, %struct.pointt** dereferenceable(8) %wayar101, i32* dereferenceable(4) %waylength102)
  %frombool137 = zext i1 %call136 to i8
  store i8 %frombool137, i8* %flcreate103, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.then134, %if.then124
  %82 = load %struct.pointt*, %struct.pointt** %wayar101, align 8
  %83 = bitcast %struct.pointt* %82 to i8*
  call void @free(i8* %83) #10
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %for.end111
  %84 = load i8, i8* %flcreate103, align 1
  %tobool140 = trunc i8 %84 to i1
  br i1 %tobool140, label %if.then141, label %if.end146

if.then141:                                       ; preds = %if.end139
  %85 = load i32, i32* %waylength102, align 4
  %conv142 = sext i32 %85 to i64
  %riverwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 6
  %86 = load i64, i64* %riverwaylength, align 8
  %add143 = add nsw i64 %86, %conv142
  store i64 %add143, i64* %riverwaylength, align 8
  %riverwayqu144 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 9
  %87 = load i64, i64* %riverwayqu144, align 8
  %inc145 = add nsw i64 %87, 1
  store i64 %inc145, i64* %riverwayqu144, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then141, %if.end139
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %88 = load i32, i32* %i, align 4
  %inc148 = add nsw i32 %88, 1
  store i32 %inc148, i32* %i, align 4
  br label %for.cond93

for.end149:                                       ; preds = %for.cond93
  %createriverwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 2
  store double 0.000000e+00, double* %createriverwaytime, align 8
  %call150 = call i64 @time(i64* null) #10
  store i64 %call150, i64* %t1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc208, %for.end149
  %89 = load i32, i32* %i, align 4
  %landwayqu152 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 4
  %90 = load i32, i32* %landwayqu152, align 4
  %cmp153 = icmp slt i32 %89, %90
  br i1 %cmp153, label %for.body154, label %for.end210

for.body154:                                      ; preds = %for.cond151
  store i32 0, i32* %j163, align 4
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc170, %for.body154
  %91 = load i32, i32* %j163, align 4
  %cmp165 = icmp slt i32 %91, 256
  br i1 %cmp165, label %for.body166, label %for.end172

for.body166:                                      ; preds = %for.cond164
  %92 = load i32, i32* %j163, align 4
  %conv167 = trunc i32 %92 to i8
  %93 = load i32, i32* %j163, align 4
  %idxprom168 = sext i32 %93 to i64
  %arrayidx169 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 %idxprom168
  store i8 %conv167, i8* %arrayidx169, align 1
  br label %for.inc170

for.inc170:                                       ; preds = %for.body166
  %94 = load i32, i32* %j163, align 4
  %inc171 = add nsw i32 %94, 1
  store i32 %inc171, i32* %j163, align 4
  br label %for.cond164

for.end172:                                       ; preds = %for.cond164
  %arrayidx173 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 0
  store i8 1, i8* %arrayidx173, align 16
  %arrayidx174 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 1
  store i8 -1, i8* %arrayidx174, align 1
  %arrayidx175 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 2
  store i8 -1, i8* %arrayidx175, align 2
  store i8 0, i8* %flcreate161, align 1
  store i32 0, i32* %waylength160, align 4
  store %struct.pointt* null, %struct.pointt** %wayar159, align 8
  %95 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 17), align 8
  %sub176 = sub nsw i32 %95, 2
  %call177 = call i32 @_Z7irandomii(i32 1, i32 %sub176)
  store i32 %call177, i32* %startx155, align 4
  %96 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 18), align 4
  %sub178 = sub nsw i32 %96, 2
  %call179 = call i32 @_Z7irandomii(i32 1, i32 %sub178)
  store i32 %call179, i32* %starty156, align 4
  %97 = load i32, i32* %startx155, align 4
  %98 = load i32, i32* %starty156, align 4
  %call180 = call zeroext i8 @_ZN7way2obj10getterrainEii(%class.way2obj* @way2, i32 %97, i32 %98)
  %idxprom181 = zext i8 %call180 to i64
  %arrayidx182 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 %idxprom181
  %99 = load i8, i8* %arrayidx182, align 1
  %conv183 = zext i8 %99 to i32
  %cmp184 = icmp sgt i32 %conv183, 0
  br i1 %cmp184, label %if.then185, label %if.end200

if.then185:                                       ; preds = %for.end172
  %100 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 17), align 8
  %sub186 = sub nsw i32 %100, 2
  %call187 = call i32 @_Z7irandomii(i32 1, i32 %sub186)
  store i32 %call187, i32* %endx157, align 4
  %101 = load i32, i32* getelementptr inbounds (%class.way2obj, %class.way2obj* @way2, i32 0, i32 18), align 4
  %sub188 = sub nsw i32 %101, 2
  %call189 = call i32 @_Z7irandomii(i32 1, i32 %sub188)
  store i32 %call189, i32* %endy158, align 4
  %102 = load i32, i32* %startx155, align 4
  %103 = load i32, i32* %starty156, align 4
  %call190 = call zeroext i8 @_ZN7way2obj10getterrainEii(%class.way2obj* @way2, i32 %102, i32 %103)
  %idxprom191 = zext i8 %call190 to i64
  %arrayidx192 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i64 0, i64 %idxprom191
  %104 = load i8, i8* %arrayidx192, align 1
  %conv193 = zext i8 %104 to i32
  %cmp194 = icmp sgt i32 %conv193, 0
  br i1 %cmp194, label %if.then195, label %if.end199

if.then195:                                       ; preds = %if.then185
  %105 = load i32, i32* %startx155, align 4
  %106 = load i32, i32* %starty156, align 4
  %107 = load i32, i32* %endx157, align 4
  %108 = load i32, i32* %endy158, align 4
  %arraydecay196 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear162, i32 0, i32 0
  %call197 = call zeroext i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* @way2, i32 %105, i32 %106, i32 %107, i32 %108, i8* %arraydecay196, %struct.pointt** dereferenceable(8) %wayar159, i32* dereferenceable(4) %waylength160)
  %frombool198 = zext i1 %call197 to i8
  store i8 %frombool198, i8* %flcreate161, align 1
  br label %if.end199

if.end199:                                        ; preds = %if.then195, %if.then185
  %109 = load %struct.pointt*, %struct.pointt** %wayar159, align 8
  %110 = bitcast %struct.pointt* %109 to i8*
  call void @free(i8* %110) #10
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %for.end172
  %111 = load i8, i8* %flcreate161, align 1
  %tobool201 = trunc i8 %111 to i1
  br i1 %tobool201, label %if.then202, label %if.end207

if.then202:                                       ; preds = %if.end200
  %112 = load i32, i32* %waylength160, align 4
  %conv203 = sext i32 %112 to i64
  %landwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 7
  %113 = load i64, i64* %landwaylength, align 8
  %add204 = add nsw i64 %113, %conv203
  store i64 %add204, i64* %landwaylength, align 8
  %landwayqu205 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 10
  %114 = load i64, i64* %landwayqu205, align 8
  %inc206 = add nsw i64 %114, 1
  store i64 %inc206, i64* %landwayqu205, align 8
  br label %if.end207

if.end207:                                        ; preds = %if.then202, %if.end200
  br label %for.inc208

for.inc208:                                       ; preds = %if.end207
  %115 = load i32, i32* %i, align 4
  %inc209 = add nsw i32 %115, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond151

for.end210:                                       ; preds = %for.cond151
  %createlandwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 3
  store double 0.000000e+00, double* %createlandwaytime, align 8
  call void @_ZN7way2obj7destroyEv(%class.way2obj* @way2)
  call void @_ZN9statinfot5printEv(%struct.statinfot* %stat)
  %call211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0))
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  call void @_ZN6wayobj6createEv(%class.wayobj* @way)
  call void @_ZN9regmngobj6createEv(%class.regmngobj* @regmng)
  call void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* @regway, %class.regmngobj* @regmng)
  %randommaplx214 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 6
  %116 = load i32, i32* %randommaplx214, align 4
  %randommaply215 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 7
  %117 = load i32, i32* %randommaply215, align 4
  %randommapdensity216 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 8
  %118 = load float, float* %randommapdensity216, align 4
  call void @_Z15createrandommapiif(i32 %116, i32 %117, float %118)
  call void @_ZN9statinfot4initEv(%struct.statinfot* %stat)
  %randommapregionsize217 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 9
  %119 = load i32, i32* %randommapregionsize217, align 4
  call void @_ZN9regmngobj13createregionsEi(%class.regmngobj* @regmng, i32 %119)
  %createregtime218 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 0
  store double 0.000000e+00, double* %createregtime218, align 8
  %call219 = call i64 @time(i64* null) #10
  store i64 %call219, i64* %t1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc254, %for.end210
  %120 = load i32, i32* %i, align 4
  %randommapwayqu221 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 10
  %121 = load i32, i32* %randommapwayqu221, align 4
  %cmp222 = icmp slt i32 %120, %121
  br i1 %cmp222, label %for.body223, label %for.end256

for.body223:                                      ; preds = %for.cond220
  store i8 0, i8* %flcreate230, align 1
  store i32 0, i32* %waylength229, align 4
  store %struct.waymapcellt* null, %struct.waymapcellt** %wayar228, align 8
  %122 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 12), align 4
  %call231 = call i32 @_Z8myrandomii(i32 1, i32 %122)
  store i32 %call231, i32* %startx224, align 4
  %123 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 13), align 8
  %call232 = call i32 @_Z8myrandomii(i32 1, i32 %123)
  store i32 %call232, i32* %starty225, align 4
  %124 = load i32, i32* %startx224, align 4
  %125 = load i32, i32* %starty225, align 4
  %call233 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* @way, i32 %124, i32 %125, i32* dereferenceable(4) %startx224, i32* dereferenceable(4) %starty225)
  br i1 %call233, label %if.then234, label %if.end245

if.then234:                                       ; preds = %for.body223
  %126 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 12), align 4
  %call235 = call i32 @_Z8myrandomii(i32 1, i32 %126)
  store i32 %call235, i32* %endx226, align 4
  %127 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 13), align 8
  %call236 = call i32 @_Z8myrandomii(i32 1, i32 %127)
  store i32 %call236, i32* %endy227, align 4
  %128 = load i32, i32* %endx226, align 4
  %129 = load i32, i32* %endy227, align 4
  %call237 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* @way, i32 %128, i32 %129, i32* dereferenceable(4) %endx226, i32* dereferenceable(4) %endy227)
  br i1 %call237, label %if.then238, label %if.end241

if.then238:                                       ; preds = %if.then234
  %130 = load i32, i32* %startx224, align 4
  %131 = load i32, i32* %starty225, align 4
  %132 = load i32, i32* %endx226, align 4
  %133 = load i32, i32* %endy227, align 4
  %call239 = call zeroext i1 @_ZN6wayobj9createwayEiiiiRP8point16tRi(%class.wayobj* @way, i32 %130, i32 %131, i32 %132, i32 %133, %struct.waymapcellt** dereferenceable(8) %wayar228, i32* dereferenceable(4) %waylength229)
  %frombool240 = zext i1 %call239 to i8
  store i8 %frombool240, i8* %flcreate230, align 1
  br label %if.end241

if.end241:                                        ; preds = %if.then238, %if.then234
  %134 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar228, align 8
  %tobool242 = icmp ne %struct.waymapcellt* %134, null
  br i1 %tobool242, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end241
  %135 = load %struct.waymapcellt*, %struct.waymapcellt** %wayar228, align 8
  %136 = bitcast %struct.waymapcellt* %135 to i8*
  call void @free(i8* %136) #10
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.end241
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %for.body223
  %137 = load i8, i8* %flcreate230, align 1
  %tobool246 = trunc i8 %137 to i1
  br i1 %tobool246, label %if.then247, label %if.end253

if.then247:                                       ; preds = %if.end245
  %138 = load i32, i32* %waylength229, align 4
  %conv248 = sext i32 %138 to i64
  %waylength249 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 5
  %139 = load i64, i64* %waylength249, align 8
  %add250 = add nsw i64 %139, %conv248
  store i64 %add250, i64* %waylength249, align 8
  %wayqu251 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 8
  %140 = load i64, i64* %wayqu251, align 8
  %inc252 = add nsw i64 %140, 1
  store i64 %inc252, i64* %wayqu251, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.then247, %if.end245
  br label %for.inc254

for.inc254:                                       ; preds = %if.end253
  %141 = load i32, i32* %i, align 4
  %inc255 = add nsw i32 %141, 1
  store i32 %inc255, i32* %i, align 4
  br label %for.cond220

for.end256:                                       ; preds = %for.cond220
  %createwaytime257 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 1
  store double 0.000000e+00, double* %createwaytime257, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond258

for.cond258:                                      ; preds = %for.inc298, %for.end256
  %142 = load i32, i32* %i, align 4
  %randommapregwayqu259 = getelementptr inbounds %struct.workinfot, %struct.workinfot* %info, i32 0, i32 11
  %143 = load i32, i32* %randommapregwayqu259, align 4
  %cmp260 = icmp slt i32 %142, %143
  br i1 %cmp260, label %for.body261, label %for.end300

for.body261:                                      ; preds = %for.cond258
  %144 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18, i32 4), align 8
  %sub269 = sub nsw i32 %144, 1
  %call270 = call i32 @_Z7random1i(i32 %sub269)
  store i32 %call270, i32* %reg1num262, align 4
  %145 = load i32, i32* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18, i32 4), align 8
  %sub271 = sub nsw i32 %145, 1
  %call272 = call i32 @_Z7random1i(i32 %sub271)
  store i32 %call272, i32* %reg2num263, align 4
  %146 = load i32, i32* %reg1num262, align 4
  %call273 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18), i32 %146)
  %147 = load %class.regobj*, %class.regobj** %call273, align 8
  store %class.regobj* %147, %class.regobj** %reg1p264, align 8
  %148 = load %class.regobj*, %class.regobj** %reg1p264, align 8
  %nb1ar274 = getelementptr inbounds %class.regobj, %class.regobj* %148, i32 0, i32 9
  %elemqu275 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar274, i32 0, i32 1
  %149 = load i32, i32* %elemqu275, align 8
  %cmp276 = icmp eq i32 %149, 0
  br i1 %cmp276, label %if.then277, label %if.end278

if.then277:                                       ; preds = %for.body261
  br label %for.inc298

if.end278:                                        ; preds = %for.body261
  %150 = load i32, i32* %reg2num263, align 4
  %call279 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* getelementptr inbounds (%class.regmngobj, %class.regmngobj* @regmng, i32 0, i32 18), i32 %150)
  %151 = load %class.regobj*, %class.regobj** %call279, align 8
  store %class.regobj* %151, %class.regobj** %reg2p265, align 8
  %152 = load %class.regobj*, %class.regobj** %reg2p265, align 8
  %nb1ar280 = getelementptr inbounds %class.regobj, %class.regobj* %152, i32 0, i32 9
  %elemqu281 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar280, i32 0, i32 1
  %153 = load i32, i32* %elemqu281, align 8
  %cmp282 = icmp eq i32 %153, 0
  br i1 %cmp282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.end278
  br label %for.inc298

if.end284:                                        ; preds = %if.end278
  store %class.regobj** null, %class.regobj*** %wayar266, align 8
  store i32 0, i32* %waylength267, align 4
  %154 = load %class.regobj*, %class.regobj** %reg1p264, align 8
  %155 = load %class.regobj*, %class.regobj** %reg2p265, align 8
  %call285 = call zeroext i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* @regway, %class.regobj* %154, %class.regobj* %155, %class.regobj*** dereferenceable(8) %wayar266, i32* dereferenceable(4) %waylength267)
  %frombool286 = zext i1 %call285 to i8
  store i8 %frombool286, i8* %flcreate268, align 1
  %156 = load %class.regobj**, %class.regobj*** %wayar266, align 8
  %tobool287 = icmp ne %class.regobj** %156, null
  br i1 %tobool287, label %if.then288, label %if.end289

if.then288:                                       ; preds = %if.end284
  %157 = load %class.regobj**, %class.regobj*** %wayar266, align 8
  %158 = bitcast %class.regobj** %157 to i8*
  call void @free(i8* %158) #10
  br label %if.end289

if.end289:                                        ; preds = %if.then288, %if.end284
  %159 = load i8, i8* %flcreate268, align 1
  %tobool290 = trunc i8 %159 to i1
  br i1 %tobool290, label %if.then291, label %if.end297

if.then291:                                       ; preds = %if.end289
  %160 = load i32, i32* %waylength267, align 4
  %conv292 = sext i32 %160 to i64
  %regwaylength293 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 11
  %161 = load i64, i64* %regwaylength293, align 8
  %add294 = add nsw i64 %161, %conv292
  store i64 %add294, i64* %regwaylength293, align 8
  %regwayqu295 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 12
  %162 = load i64, i64* %regwayqu295, align 8
  %inc296 = add nsw i64 %162, 1
  store i64 %inc296, i64* %regwayqu295, align 8
  br label %if.end297

if.end297:                                        ; preds = %if.then291, %if.end289
  br label %for.inc298

for.inc298:                                       ; preds = %if.end297, %if.then283, %if.then277
  %163 = load i32, i32* %i, align 4
  %inc299 = add nsw i32 %163, 1
  store i32 %inc299, i32* %i, align 4
  br label %for.cond258

for.end300:                                       ; preds = %for.cond258
  %createregwaytime301 = getelementptr inbounds %struct.statinfot, %struct.statinfot* %stat, i32 0, i32 4
  store double 0.000000e+00, double* %createregwaytime301, align 8
  call void @_ZN9regwayobj7destroyEv(%class.regwayobj* @regway)
  call void @_ZN9regmngobj7destroyEv(%class.regmngobj* @regmng)
  call void @_ZN6wayobj7destroyEv(%class.wayobj* @way)
  call void @_ZN9statinfot5printEv(%struct.statinfot* %stat)
  %call302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end300, %if.then4, %if.then
  %164 = load i32, i32* %retval, align 4
  ret i32 %164
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #7

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #7

declare i32 @fclose(%struct._IO_FILE*) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9statinfot4initEv(%struct.statinfot* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.statinfot*, align 8
  store %struct.statinfot* %this, %struct.statinfot** %this.addr, align 8
  %this1 = load %struct.statinfot*, %struct.statinfot** %this.addr, align 8
  %createregtime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 0
  store double 0.000000e+00, double* %createregtime, align 8
  %createwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 1
  store double 0.000000e+00, double* %createwaytime, align 8
  %createriverwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 2
  store double 0.000000e+00, double* %createriverwaytime, align 8
  %createlandwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 3
  store double 0.000000e+00, double* %createlandwaytime, align 8
  %createregwaytime = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 4
  store double 0.000000e+00, double* %createregwaytime, align 8
  %waylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 5
  store i64 0, i64* %waylength, align 8
  %wayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 8
  store i64 0, i64* %wayqu, align 8
  %riverwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 9
  store i64 0, i64* %riverwayqu, align 8
  %landwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 10
  store i64 0, i64* %landwayqu, align 8
  %regwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 11
  store i64 0, i64* %regwaylength, align 8
  %riverwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 6
  store i64 0, i64* %riverwaylength, align 8
  %landwaylength = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 7
  store i64 0, i64* %landwaylength, align 8
  %regwayqu = getelementptr inbounds %struct.statinfot, %struct.statinfot* %this1, i32 0, i32 12
  store i64 0, i64* %regwayqu, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  %index.addr = alloca i32, align 4
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %0 = load %class.regobj**, %class.regobj*** %ep, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %0, i64 %idxprom
  ret %class.regobj** %arrayidx
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_Z7irandomii(i32 %lo, i32 %hi) #0 comdat {
entry:
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32, i32* %lo.addr, align 4
  %1 = load i32, i32* %hi.addr, align 4
  %call = call i32 @_Z8myrandomii(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i8 @_ZN7way2obj10getterrainEii(%class.way2obj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  %0 = load i8*, i8** %mapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %3 = load i32, i32* %mapsizex, align 8
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: noinline uwtable
define %struct.levelplacet* @_ZN6wayobj14findfreepointsE8rvectortiRi(%class.wayobj* %this, <2 x float> %startp.coerce0, float %startp.coerce1, i32 %minpointqu, i32* dereferenceable(4) %pointqu) #0 align 2 {
entry:
  %retval = alloca %struct.levelplacet*, align 8
  %startp = alloca %class.rvectort, align 4
  %coerce = alloca { <2 x float>, float }, align 4
  %this.addr = alloca %class.wayobj*, align 8
  %minpointqu.addr = alloca i32, align 4
  %pointqu.addr = alloca i32*, align 8
  %startx = alloca i32, align 4
  %starty = alloca i32, align 4
  %contour = alloca %class.flexarray.10, align 8
  %minneighbourcoef = alloca i32, align 4
  %place = alloca %struct.levelplacet, align 4
  %placearp = alloca %struct.levelplacet*, align 8
  %fillnum = alloca i16, align 2
  %neighboursqu = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 0
  store <2 x float> %startp.coerce0, <2 x float>* %0, align 4
  %1 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %coerce, i32 0, i32 1
  store float %startp.coerce1, float* %1, align 4
  %2 = bitcast %class.rvectort* %startp to i8*
  %3 = bitcast { <2 x float>, float }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 12, i32 4, i1 false)
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %minpointqu, i32* %minpointqu.addr, align 4
  store i32* %pointqu, i32** %pointqu.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %x2 = getelementptr inbounds %class.rvectort, %class.rvectort* %startp, i32 0, i32 0
  %4 = load float, float* %x2, align 4
  %call = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %this1, float %4)
  store i32 %call, i32* %startx, align 4
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %startp, i32 0, i32 2
  %5 = load float, float* %z, align 4
  %call3 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %this1, float %5)
  store i32 %call3, i32* %starty, align 4
  %6 = load i32, i32* %startx, align 4
  %7 = load i32, i32* %starty, align 4
  %call4 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %6, i32 %7)
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %8 = load i32, i32* %maplx, align 4
  %shr = ashr i32 %8, 1
  store i32 %shr, i32* %startx, align 4
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %9 = load i32, i32* %maply, align 8
  %shr5 = ashr i32 %9, 1
  store i32 %shr5, i32* %starty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %startx, align 4
  %11 = load i32, i32* %starty, align 4
  %call6 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %10, i32 %11)
  %12 = load i16, i16* %call6, align 2
  %conv = sext i16 %12 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %13 = load i32, i32* %startx, align 4
  %14 = load i32, i32* %starty, align 4
  %call8 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this1, i32 %13, i32 %14, i32* dereferenceable(4) %startx, i32* dereferenceable(4) %starty)
  %conv9 = zext i1 %call8 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  store %struct.levelplacet* null, %struct.levelplacet** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %15 = load i32, i32* %startx, align 4
  %16 = load i32, i32* %starty, align 4
  %call14 = call zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this1, i32 %15, i32 %16, i32 0, i32 0)
  %fillnum15 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %17 = load i16, i16* %fillnum15, align 2
  store i16 %17, i16* %fillnum, align 2
  %maplx16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %18 = load i32, i32* %maplx16, align 4
  %mul = mul nsw i32 %18, 10
  call void @_ZN9flexarrayI11levelplacetE6createEi(%class.flexarray.10* %contour, i32 %mul)
  %maply17 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %19 = load i32, i32* %maply17, align 8
  store i32 %19, i32* %yoffset, align 4
  store i32 7, i32* %minneighbourcoef, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end13
  call void @_ZN9flexarrayI11levelplacetE5clearEv(%class.flexarray.10* %contour)
  store i32 1, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc112, %do.body
  %20 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 4
  %21 = load i32, i32* %mapmaxy, align 8
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %for.body, label %for.end114

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 3
  %23 = load i32, i32* %mapmaxx, align 4
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %24 = load i32, i32* %y, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %25 = load i32, i32* %shift, align 8
  %shl = shl i32 %24, %25
  %26 = load i32, i32* %x, align 4
  %or = or i32 %shl, %26
  store i32 %or, i32* %index, align 4
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %27 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %28 = load i32, i32* %index, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %27, i64 %idxprom
  %fillnum22 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %29 = load i16, i16* %fillnum22, align 2
  %conv23 = zext i16 %29 to i32
  %30 = load i16, i16* %fillnum, align 2
  %conv24 = zext i16 %30 to i32
  %cmp25 = icmp eq i32 %conv23, %conv24
  br i1 %cmp25, label %if.then26, label %if.end110

if.then26:                                        ; preds = %for.body21
  store i32 0, i32* %neighboursqu, align 4
  %31 = load i32, i32* %index, align 4
  %32 = load i32, i32* %yoffset, align 4
  %sub = sub nsw i32 %31, %32
  %sub27 = sub nsw i32 %sub, 1
  store i32 %sub27, i32* %index1, align 4
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %33 = load i16*, i16** %maparp, align 8
  %34 = load i32, i32* %index1, align 4
  %idxprom28 = sext i32 %34 to i64
  %arrayidx29 = getelementptr inbounds i16, i16* %33, i64 %idxprom28
  %35 = load i16, i16* %arrayidx29, align 2
  %conv30 = sext i16 %35 to i32
  %cmp31 = icmp ne i32 %conv30, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then26
  %36 = load i32, i32* %neighboursqu, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %neighboursqu, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then26
  %37 = load i32, i32* %index, align 4
  %38 = load i32, i32* %yoffset, align 4
  %sub34 = sub nsw i32 %37, %38
  store i32 %sub34, i32* %index1, align 4
  %maparp35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %39 = load i16*, i16** %maparp35, align 8
  %40 = load i32, i32* %index1, align 4
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %39, i64 %idxprom36
  %41 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %41 to i32
  %cmp39 = icmp ne i32 %conv38, 0
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end33
  %42 = load i32, i32* %neighboursqu, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* %neighboursqu, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end33
  %43 = load i32, i32* %index, align 4
  %44 = load i32, i32* %yoffset, align 4
  %sub43 = sub nsw i32 %43, %44
  %add = add nsw i32 %sub43, 1
  store i32 %add, i32* %index1, align 4
  %maparp44 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %45 = load i16*, i16** %maparp44, align 8
  %46 = load i32, i32* %index1, align 4
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds i16, i16* %45, i64 %idxprom45
  %47 = load i16, i16* %arrayidx46, align 2
  %conv47 = sext i16 %47 to i32
  %cmp48 = icmp ne i32 %conv47, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end42
  %48 = load i32, i32* %neighboursqu, align 4
  %inc50 = add nsw i32 %48, 1
  store i32 %inc50, i32* %neighboursqu, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end42
  %49 = load i32, i32* %index, align 4
  %sub52 = sub nsw i32 %49, 1
  store i32 %sub52, i32* %index1, align 4
  %maparp53 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %50 = load i16*, i16** %maparp53, align 8
  %51 = load i32, i32* %index1, align 4
  %idxprom54 = sext i32 %51 to i64
  %arrayidx55 = getelementptr inbounds i16, i16* %50, i64 %idxprom54
  %52 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %52 to i32
  %cmp57 = icmp ne i32 %conv56, 0
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end51
  %53 = load i32, i32* %neighboursqu, align 4
  %inc59 = add nsw i32 %53, 1
  store i32 %inc59, i32* %neighboursqu, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end51
  %54 = load i32, i32* %index, align 4
  %add61 = add nsw i32 %54, 1
  store i32 %add61, i32* %index1, align 4
  %maparp62 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %55 = load i16*, i16** %maparp62, align 8
  %56 = load i32, i32* %index1, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds i16, i16* %55, i64 %idxprom63
  %57 = load i16, i16* %arrayidx64, align 2
  %conv65 = sext i16 %57 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end60
  %58 = load i32, i32* %neighboursqu, align 4
  %inc68 = add nsw i32 %58, 1
  store i32 %inc68, i32* %neighboursqu, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end60
  %59 = load i32, i32* %index, align 4
  %60 = load i32, i32* %yoffset, align 4
  %add70 = add nsw i32 %59, %60
  %sub71 = sub nsw i32 %add70, 1
  store i32 %sub71, i32* %index1, align 4
  %maparp72 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %61 = load i16*, i16** %maparp72, align 8
  %62 = load i32, i32* %index1, align 4
  %idxprom73 = sext i32 %62 to i64
  %arrayidx74 = getelementptr inbounds i16, i16* %61, i64 %idxprom73
  %63 = load i16, i16* %arrayidx74, align 2
  %conv75 = sext i16 %63 to i32
  %cmp76 = icmp ne i32 %conv75, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end69
  %64 = load i32, i32* %neighboursqu, align 4
  %inc78 = add nsw i32 %64, 1
  store i32 %inc78, i32* %neighboursqu, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end69
  %65 = load i32, i32* %index, align 4
  %66 = load i32, i32* %yoffset, align 4
  %add80 = add nsw i32 %65, %66
  store i32 %add80, i32* %index1, align 4
  %maparp81 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %67 = load i16*, i16** %maparp81, align 8
  %68 = load i32, i32* %index1, align 4
  %idxprom82 = sext i32 %68 to i64
  %arrayidx83 = getelementptr inbounds i16, i16* %67, i64 %idxprom82
  %69 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %69 to i32
  %cmp85 = icmp ne i32 %conv84, 0
  br i1 %cmp85, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end79
  %70 = load i32, i32* %neighboursqu, align 4
  %inc87 = add nsw i32 %70, 1
  store i32 %inc87, i32* %neighboursqu, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end79
  %71 = load i32, i32* %index, align 4
  %72 = load i32, i32* %yoffset, align 4
  %add89 = add nsw i32 %71, %72
  %add90 = add nsw i32 %add89, 1
  store i32 %add90, i32* %index1, align 4
  %maparp91 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %73 = load i16*, i16** %maparp91, align 8
  %74 = load i32, i32* %index1, align 4
  %idxprom92 = sext i32 %74 to i64
  %arrayidx93 = getelementptr inbounds i16, i16* %73, i64 %idxprom92
  %75 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %75 to i32
  %cmp95 = icmp ne i32 %conv94, 0
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end88
  %76 = load i32, i32* %neighboursqu, align 4
  %inc97 = add nsw i32 %76, 1
  store i32 %inc97, i32* %neighboursqu, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end88
  %77 = load i32, i32* %neighboursqu, align 4
  %78 = load i32, i32* %minneighbourcoef, align 4
  %cmp99 = icmp sge i32 %77, %78
  br i1 %cmp99, label %if.then100, label %if.end109

if.then100:                                       ; preds = %if.end98
  %79 = load i32, i32* %index, align 4
  %call101 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %79)
  %conv102 = trunc i32 %call101 to i16
  %x103 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %place, i32 0, i32 0
  store i16 %conv102, i16* %x103, align 4
  %80 = load i32, i32* %index, align 4
  %call104 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %80)
  %conv105 = trunc i32 %call104 to i16
  %y106 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %place, i32 0, i32 1
  store i16 %conv105, i16* %y106, align 2
  %81 = load i32, i32* %neighboursqu, align 4
  %conv107 = sitofp i32 %81 to float
  %mul108 = fmul float %conv107, 1.250000e-01
  %hiding = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %place, i32 0, i32 4
  store float %mul108, float* %hiding, align 4
  call void @_ZN9flexarrayI11levelplacetE3addERKS0_(%class.flexarray.10* %contour, %struct.levelplacet* dereferenceable(16) %place)
  br label %if.end109

if.end109:                                        ; preds = %if.then100, %if.end98
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %for.body21
  br label %for.inc

for.inc:                                          ; preds = %if.end110
  %82 = load i32, i32* %x, align 4
  %inc111 = add nsw i32 %82, 1
  store i32 %inc111, i32* %x, align 4
  br label %for.cond19

for.end:                                          ; preds = %for.cond19
  br label %for.inc112

for.inc112:                                       ; preds = %for.end
  %83 = load i32, i32* %y, align 4
  %inc113 = add nsw i32 %83, 1
  store i32 %inc113, i32* %y, align 4
  br label %for.cond

for.end114:                                       ; preds = %for.cond
  %84 = load i32, i32* %minneighbourcoef, align 4
  %dec = add nsw i32 %84, -1
  store i32 %dec, i32* %minneighbourcoef, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end114
  %elemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %contour, i32 0, i32 1
  %85 = load i32, i32* %elemqu, align 8
  %86 = load i32, i32* %minpointqu.addr, align 4
  %cmp115 = icmp slt i32 %85, %86
  br i1 %cmp115, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %87 = load i32, i32* %minneighbourcoef, align 4
  %cmp116 = icmp sge i32 %87, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %88 = phi i1 [ false, %do.cond ], [ %cmp116, %land.rhs ]
  br i1 %88, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %89 = load i32, i32* %minneighbourcoef, align 4
  %cmp117 = icmp slt i32 %89, -1
  br i1 %cmp117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %do.end
  call void @_ZN9flexarrayI11levelplacetE7destroyEv(%class.flexarray.10* %contour)
  store %struct.levelplacet* null, %struct.levelplacet** %retval, align 8
  br label %return

if.end119:                                        ; preds = %do.end
  %elemqu120 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %contour, i32 0, i32 1
  %90 = load i32, i32* %elemqu120, align 8
  %91 = load i32*, i32** %pointqu.addr, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %pointqu.addr, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %94, i64 16)
  %96 = extractvalue { i64, i1 } %95, 1
  %97 = extractvalue { i64, i1 } %95, 0
  %98 = select i1 %96, i64 -1, i64 %97
  %call121 = call i8* @_Znam(i64 %98) #11
  %99 = bitcast i8* %call121 to %struct.levelplacet*
  store %struct.levelplacet* %99, %struct.levelplacet** %placearp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc178, %if.end119
  %100 = load i32, i32* %i, align 4
  %101 = load i32*, i32** %pointqu.addr, align 8
  %102 = load i32, i32* %101, align 4
  %cmp123 = icmp slt i32 %100, %102
  br i1 %cmp123, label %for.body124, label %for.end180

for.body124:                                      ; preds = %for.cond122
  %ep = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %contour, i32 0, i32 0
  %103 = load %struct.levelplacet*, %struct.levelplacet** %ep, align 8
  %104 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %104 to i64
  %arrayidx126 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %103, i64 %idxprom125
  %x127 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx126, i32 0, i32 0
  %105 = load i16, i16* %x127, align 4
  %106 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %107 to i64
  %arrayidx129 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %106, i64 %idxprom128
  %x130 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx129, i32 0, i32 0
  store i16 %105, i16* %x130, align 4
  %ep131 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %contour, i32 0, i32 0
  %108 = load %struct.levelplacet*, %struct.levelplacet** %ep131, align 8
  %109 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %109 to i64
  %arrayidx133 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %108, i64 %idxprom132
  %y134 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx133, i32 0, i32 1
  %110 = load i16, i16* %y134, align 2
  %111 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %112 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %112 to i64
  %arrayidx136 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %111, i64 %idxprom135
  %y137 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx136, i32 0, i32 1
  store i16 %110, i16* %y137, align 2
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %113 = load float, float* %minx, align 8
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %114 = load float, float* %cellr, align 4
  %add138 = fadd float %113, %114
  %115 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %116 to i64
  %arrayidx140 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %115, i64 %idxprom139
  %x141 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx140, i32 0, i32 0
  %117 = load i16, i16* %x141, align 4
  %conv142 = sitofp i16 %117 to float
  %info143 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info143, i32 0, i32 1
  %118 = load float, float* %maxx, align 4
  %info144 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx145 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info144, i32 0, i32 0
  %119 = load float, float* %minx145, align 8
  %sub146 = fsub float %118, %119
  %mul147 = fmul float %conv142, %sub146
  %maplx148 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %120 = load i32, i32* %maplx148, align 4
  %conv149 = sitofp i32 %120 to float
  %div = fdiv float %mul147, %conv149
  %add150 = fadd float %add138, %div
  %121 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %122 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %122 to i64
  %arrayidx152 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %121, i64 %idxprom151
  %rx = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx152, i32 0, i32 2
  store float %add150, float* %rx, align 4
  %info153 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info153, i32 0, i32 2
  %123 = load float, float* %miny, align 8
  %cellr154 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %124 = load float, float* %cellr154, align 4
  %add155 = fadd float %123, %124
  %125 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %126 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %126 to i64
  %arrayidx157 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %125, i64 %idxprom156
  %y158 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx157, i32 0, i32 1
  %127 = load i16, i16* %y158, align 2
  %conv159 = sitofp i16 %127 to float
  %info160 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info160, i32 0, i32 3
  %128 = load float, float* %maxy, align 4
  %info161 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny162 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info161, i32 0, i32 2
  %129 = load float, float* %miny162, align 8
  %sub163 = fsub float %128, %129
  %mul164 = fmul float %conv159, %sub163
  %maply165 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %130 = load i32, i32* %maply165, align 8
  %conv166 = sitofp i32 %130 to float
  %div167 = fdiv float %mul164, %conv166
  %add168 = fadd float %add155, %div167
  %131 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %132 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %132 to i64
  %arrayidx170 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %131, i64 %idxprom169
  %ry = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx170, i32 0, i32 3
  store float %add168, float* %ry, align 4
  %ep171 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %contour, i32 0, i32 0
  %133 = load %struct.levelplacet*, %struct.levelplacet** %ep171, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %134 to i64
  %arrayidx173 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %133, i64 %idxprom172
  %hiding174 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx173, i32 0, i32 4
  %135 = load float, float* %hiding174, align 4
  %136 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %137 to i64
  %arrayidx176 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %136, i64 %idxprom175
  %hiding177 = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %arrayidx176, i32 0, i32 4
  store float %135, float* %hiding177, align 4
  br label %for.inc178

for.inc178:                                       ; preds = %for.body124
  %138 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %138, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond122

for.end180:                                       ; preds = %for.cond122
  call void @_ZN9flexarrayI11levelplacetE7destroyEv(%class.flexarray.10* %contour)
  %139 = load %struct.levelplacet*, %struct.levelplacet** %placearp, align 8
  store %struct.levelplacet* %139, %struct.levelplacet** %retval, align 8
  br label %return

return:                                           ; preds = %for.end180, %if.then118, %if.then11
  %140 = load %struct.levelplacet*, %struct.levelplacet** %retval, align 8
  ret %struct.levelplacet* %140
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayI11levelplacetE6createEi(%class.flexarray.10* %this, i32 %maxelemquin) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.10*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexarray.10* %this, %class.flexarray.10** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexarray.10*, %class.flexarray.10** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 16
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv3, i32 16)
  %2 = bitcast i8* %call to %struct.levelplacet*
  %ep = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  store %struct.levelplacet* %2, %struct.levelplacet** %ep, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI11levelplacetE5clearEv(%class.flexarray.10* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.10*, align 8
  store %class.flexarray.10* %this, %class.flexarray.10** %this.addr, align 8
  %this1 = load %class.flexarray.10*, %class.flexarray.10** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayI11levelplacetE3addERKS0_(%class.flexarray.10* %this, %struct.levelplacet* dereferenceable(16) %e) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.10*, align 8
  %e.addr = alloca %struct.levelplacet*, align 8
  store %class.flexarray.10* %this, %class.flexarray.10** %this.addr, align 8
  store %struct.levelplacet* %e, %struct.levelplacet** %e.addr, align 8
  %this1 = load %class.flexarray.10*, %class.flexarray.10** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN9flexarrayI11levelplacetE8doublingEb(%class.flexarray.10* %this1, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.levelplacet*, %struct.levelplacet** %e.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  %3 = load %struct.levelplacet*, %struct.levelplacet** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 1
  %4 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.levelplacet, %struct.levelplacet* %3, i64 %idxprom
  %5 = bitcast %struct.levelplacet* %arrayidx to i8*
  %6 = bitcast %struct.levelplacet* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 16, i32 4, i1 false)
  %elemqu3 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 1
  %7 = load i32, i32* %elemqu3, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %elemqu3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI11levelplacetE7destroyEv(%class.flexarray.10* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.10*, align 8
  store %class.flexarray.10* %this, %class.flexarray.10** %this.addr, align 8
  %this1 = load %class.flexarray.10*, %class.flexarray.10** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  %0 = load %struct.levelplacet*, %struct.levelplacet** %ep, align 8
  %1 = bitcast %struct.levelplacet* %0 to i8*
  call void @_Z13_aligned_freePv(i8* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z13_aligned_freePv(i8* %p) #2 comdat {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  call void @free(i8* %0) #10
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayI11levelplacetE8doublingEb(%class.flexarray.10* %this, i1 zeroext %flcopy) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.10*, align 8
  %flcopy.addr = alloca i8, align 1
  %newep = alloca %struct.levelplacet*, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexarray.10* %this, %class.flexarray.10** %this.addr, align 8
  %frombool = zext i1 %flcopy to i8
  store i8 %frombool, i8* %flcopy.addr, align 1
  %this1 = load %class.flexarray.10*, %class.flexarray.10** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 16
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv2, i32 16)
  %2 = bitcast i8* %call to %struct.levelplacet*
  store %struct.levelplacet* %2, %struct.levelplacet** %newep, align 8
  %3 = load i8, i8* %flcopy.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.levelplacet*, %struct.levelplacet** %newep, align 8
  %5 = bitcast %struct.levelplacet* %4 to i8*
  %ep = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  %6 = load %struct.levelplacet*, %struct.levelplacet** %ep, align 8
  %7 = bitcast %struct.levelplacet* %6 to i8*
  %maxelemqu3 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  %8 = load i32, i32* %maxelemqu3, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul5, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ep6 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  %9 = load %struct.levelplacet*, %struct.levelplacet** %ep6, align 8
  %10 = bitcast %struct.levelplacet* %9 to i8*
  call void @_Z13_aligned_freePv(i8* %10)
  %11 = load %struct.levelplacet*, %struct.levelplacet** %newep, align 8
  %ep7 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 0
  store %struct.levelplacet* %11, %struct.levelplacet** %ep7, align 8
  %12 = load i32, i32* %newelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.flexarray.10, %class.flexarray.10* %this1, i32 0, i32 2
  store i32 %12, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_Z15_aligned_mallocii(i32 %size, i32 %align) #2 comdat {
entry:
  %size.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %align, i32* %align.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @malloc(i64 %conv) #10
  ret i8* %call
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj16findverticallineEiiRiS0_(%class.wayobj* %this, i32 %x, i32 %y, i32* dereferenceable(4) %y1, i32* dereferenceable(4) %y2) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %y1.addr = alloca i32*, align 8
  %y2.addr = alloca i32*, align 8
  %yy = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32* %y1, i32** %y1.addr, align 8
  store i32* %y2, i32** %y2.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32*, i32** %y1.addr, align 8
  store i32 %0, i32* %1, align 4
  %2 = load i32, i32* %y.addr, align 4
  %3 = load i32*, i32** %y2.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %y.addr, align 4
  store i32 %4, i32* %yy, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %yy, align 4
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %6 = load i32, i32* %maply, align 8
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %yy, align 4
  %call = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %7, i32 %8)
  %9 = load i16, i16* %call, align 2
  %conv = sext i16 %9 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %yy, align 4
  %11 = load i32*, i32** %y2.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %yy, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %yy, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %y.addr, align 4
  store i32 %13, i32* %yy, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %14 = load i32, i32* %yy, align 4
  %cmp4 = icmp sgt i32 %14, 0
  br i1 %cmp4, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond3
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %yy, align 4
  %call6 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %15, i32 %16)
  %17 = load i16, i16* %call6, align 2
  %conv7 = sext i16 %17 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.body5
  %18 = load i32, i32* %yy, align 4
  %19 = load i32*, i32** %y1.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %for.end12

if.end10:                                         ; preds = %for.body5
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %20 = load i32, i32* %yy, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %yy, align 4
  br label %for.cond3

for.end12:                                        ; preds = %if.then9, %for.cond3
  ret i1 true
}

; Function Attrs: noinline nounwind uwtable
define float @_Z8myrandomv() #2 {
entry:
  %x1 = alloca float, align 4
  %x2 = alloca float, align 4
  %x3 = alloca float, align 4
  %0 = load i32, i32* @_ZL5y1rnd, align 4
  %mul = mul nsw i32 171, %0
  %rem = srem i32 %mul, 30269
  store i32 %rem, i32* @_ZL5y1rnd, align 4
  %1 = load i32, i32* @_ZL5y2rnd, align 4
  %mul1 = mul nsw i32 172, %1
  %rem2 = srem i32 %mul1, 30307
  store i32 %rem2, i32* @_ZL5y2rnd, align 4
  %2 = load i32, i32* @_ZL5y3rnd, align 4
  %mul3 = mul nsw i32 170, %2
  %rem4 = srem i32 %mul3, 30323
  store i32 %rem4, i32* @_ZL5y3rnd, align 4
  %3 = load i32, i32* @_ZL5y1rnd, align 4
  %conv = sitofp i32 %3 to float
  store float %conv, float* %x1, align 4
  %4 = load float, float* %x1, align 4
  %mul5 = fmul float %4, 0x3F01522A20000000
  store float %mul5, float* %x1, align 4
  %5 = load i32, i32* @_ZL5y2rnd, align 4
  %conv6 = sitofp i32 %5 to float
  store float %conv6, float* %x2, align 4
  %6 = load float, float* %x2, align 4
  %mul7 = fmul float %6, 0x3F014C9AE0000000
  store float %mul7, float* %x2, align 4
  %7 = load i32, i32* @_ZL5y3rnd, align 4
  %conv8 = sitofp i32 %7 to float
  store float %conv8, float* %x3, align 4
  %8 = load float, float* %x3, align 4
  %mul9 = fmul float %8, 0x3F014A44A0000000
  store float %mul9, float* %x3, align 4
  %9 = load float, float* %x1, align 4
  %10 = load float, float* %x2, align 4
  %add = fadd float %9, %10
  %11 = load float, float* %x3, align 4
  %add10 = fadd float %add, %11
  %12 = load float, float* %x1, align 4
  %13 = load float, float* %x2, align 4
  %add11 = fadd float %12, %13
  %14 = load float, float* %x3, align 4
  %add12 = fadd float %add11, %14
  %conv13 = fptosi float %add12 to i32
  %conv14 = sitofp i32 %conv13 to float
  %sub = fsub float %add10, %conv14
  ret float %sub
}

; Function Attrs: noinline nounwind uwtable
define float @_Z8myrandomff(float %lo, float %hi) #2 {
entry:
  %lo.addr = alloca float, align 4
  %hi.addr = alloca float, align 4
  store float %lo, float* %lo.addr, align 4
  store float %hi, float* %hi.addr, align 4
  %0 = load float, float* %hi.addr, align 4
  %1 = load float, float* %lo.addr, align 4
  %sub = fsub float %0, %1
  %call = call float @_Z8myrandomv()
  %mul = fmul float %sub, %call
  %2 = load float, float* %lo.addr, align 4
  %add = fadd float %mul, %2
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define i32 @_Z8myrandomii(i32 %lo, i32 %hi) #2 {
entry:
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  store i32 %lo, i32* %lo.addr, align 4
  store i32 %hi, i32* %hi.addr, align 4
  %0 = load i32, i32* %hi.addr, align 4
  %1 = load i32, i32* %lo.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %conv = sitofp i32 %add to float
  %call = call float @_Z8myrandomv()
  %mul = fmul float %conv, %call
  %conv1 = fptosi float %mul to i32
  %2 = load i32, i32* %lo.addr, align 4
  %add2 = add nsw i32 %conv1, %2
  ret i32 %add2
}

; Function Attrs: noinline nounwind uwtable
define i32 @_Z7random1i(i32 %max) #2 {
entry:
  %max.addr = alloca i32, align 4
  store i32 %max, i32* %max.addr, align 4
  %call = call float @_Z8myrandomv()
  %0 = load i32, i32* %max.addr, align 4
  %conv = sitofp i32 %0 to float
  %mul = fmul float %call, %conv
  %conv1 = fptosi float %mul to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define void @_Z10initrandomv() #2 {
entry:
  store i32 1023, i32* @_ZL5y1rnd, align 4
  store i32 11, i32* @_ZL5y2rnd, align 4
  store i32 3007, i32* @_ZL5y3rnd, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* %this, %class.flexarray* dereferenceable(16) %barp, i32 %x, i32 %y) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %barp.addr = alloca %class.flexarray*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %flpassable = alloca i8, align 1
  %ref.tmp = alloca %struct.pointt, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store %class.flexarray* %barp, %class.flexarray** %barp.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %this1, i32 %0, i32 %1)
  %idxprom = zext i8 %call to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %2 to i1
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %flpassable, align 1
  %3 = load i8, i8* %flpassable, align 1
  %tobool2 = trunc i8 %3 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %flfind = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 4
  %4 = load i8, i8* %flfind, align 4
  %tobool3 = trunc i8 %4 to i1
  %conv = zext i1 %tobool3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %x.addr, align 4
  %freepointx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 2
  store i32 %5, i32* %freepointx, align 4
  %6 = load i32, i32* %y.addr, align 4
  %freepointy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 3
  store i32 %6, i32* %freepointy, align 8
  %flfind4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 4
  store i8 1, i8* %flfind4, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i8, i8* %flpassable, align 1
  %tobool5 = trunc i8 %7 to i1
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %8 = load %class.flexarray*, %class.flexarray** %barp.addr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %10 = load i32, i32* %y.addr, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %9, i32 %10)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %8, %struct.pointt* dereferenceable(8) %ref.tmp)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %11 = load i16, i16* %fillnum, align 8
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %12 = load i16*, i16** %mmapp, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %15 = load i32, i32* %mapsizex, align 4
  %mul = mul nsw i32 %14, %15
  %add = add nsw i32 %13, %mul
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %12, i64 %idxprom8
  store i16 %11, i16* %arrayidx9, align 2
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  %0 = load i8*, i8** %landscapemapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %3 = load i32, i32* %mapsizex, align 4
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6pointtC2Eii(%struct.pointt* %this, i32 %xin, i32 %yin) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.pointt*, align 8
  %xin.addr = alloca i32, align 4
  %yin.addr = alloca i32, align 4
  store %struct.pointt* %this, %struct.pointt** %this.addr, align 8
  store i32 %xin, i32* %xin.addr, align 4
  store i32 %yin, i32* %yin.addr, align 4
  %this1 = load %struct.pointt*, %struct.pointt** %this.addr, align 8
  %0 = load i32, i32* %xin.addr, align 4
  %x = getelementptr inbounds %struct.pointt, %struct.pointt* %this1, i32 0, i32 0
  store i32 %0, i32* %x, align 4
  %1 = load i32, i32* %yin.addr, align 4
  %y = getelementptr inbounds %struct.pointt, %struct.pointt* %this1, i32 0, i32 1
  store i32 %1, i32* %y, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %this, %struct.pointt* dereferenceable(8) %e) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  %e.addr = alloca %struct.pointt*, align 8
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  store %struct.pointt* %e, %struct.pointt** %e.addr, align 8
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray* %this1, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pointt*, %struct.pointt** %e.addr, align 8
  %ep = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  %3 = load %struct.pointt*, %struct.pointt** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 1
  %4 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.pointt, %struct.pointt* %3, i64 %idxprom
  %5 = bitcast %struct.pointt* %arrayidx to i8*
  %6 = bitcast %struct.pointt* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 8, i32 4, i1 false)
  %elemqu3 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 1
  %7 = load i32, i32* %elemqu3, align 8
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %elemqu3, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayI6pointtE8doublingEb(%class.flexarray* %this, i1 zeroext %flcopy) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  %flcopy.addr = alloca i8, align 1
  %newep = alloca %struct.pointt*, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  %frombool = zext i1 %flcopy to i8
  store i8 %frombool, i8* %flcopy.addr, align 1
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv2, i32 16)
  %2 = bitcast i8* %call to %struct.pointt*
  store %struct.pointt* %2, %struct.pointt** %newep, align 8
  %3 = load i8, i8* %flcopy.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.pointt*, %struct.pointt** %newep, align 8
  %5 = bitcast %struct.pointt* %4 to i8*
  %ep = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  %6 = load %struct.pointt*, %struct.pointt** %ep, align 8
  %7 = bitcast %struct.pointt* %6 to i8*
  %maxelemqu3 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  %8 = load i32, i32* %maxelemqu3, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul5, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ep6 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  %9 = load %struct.pointt*, %struct.pointt** %ep6, align 8
  %10 = bitcast %struct.pointt* %9 to i8*
  call void @_Z13_aligned_freePv(i8* %10)
  %11 = load %struct.pointt*, %struct.pointt** %newep, align 8
  %ep7 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  store %struct.pointt* %11, %struct.pointt** %ep7, align 8
  %12 = load i32, i32* %newelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  store i32 %12, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* %this, %class.flexarray* dereferenceable(16) %b1arp, %class.flexarray* dereferenceable(16) %b2arp) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %b1arp.addr = alloca %class.flexarray*, align 8
  %b2arp.addr = alloca %class.flexarray*, align 8
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store %class.flexarray* %b1arp, %class.flexarray** %b1arp.addr, align 8
  store %class.flexarray* %b2arp, %class.flexarray** %b2arp.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %0 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  call void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %0)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc38, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %2, i32 0, i32 1
  %3 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end40

for.body:                                         ; preds = %for.cond
  %4 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %5 = load i32, i32* %j, align 4
  %call = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %4, i32 %5)
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %call, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %x1, align 4
  %7 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call4 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %7, i32 %8)
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %call4, i32 0, i32 1
  %9 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %9, 1
  store i32 %sub6, i32* %y1, align 4
  %10 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %11 = load i32, i32* %j, align 4
  %call7 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %10, i32 %11)
  %x8 = getelementptr inbounds %struct.pointt, %struct.pointt* %call7, i32 0, i32 0
  %12 = load i32, i32* %x8, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %x2, align 4
  %13 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %14 = load i32, i32* %j, align 4
  %call9 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %13, i32 %14)
  %y10 = getelementptr inbounds %struct.pointt, %struct.pointt* %call9, i32 0, i32 1
  %15 = load i32, i32* %y10, align 4
  %add11 = add nsw i32 %15, 1
  store i32 %add11, i32* %y2, align 4
  %16 = load i32, i32* %x1, align 4
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %y1, align 4
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 0, i32* %y1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %18 = load i32, i32* %x2, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %19 = load i32, i32* %mapmaxx, align 4
  %cmp16 = icmp sgt i32 %18, %19
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %mapmaxx18 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %20 = load i32, i32* %mapmaxx18, align 4
  store i32 %20, i32* %x2, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %21 = load i32, i32* %y2, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %22 = load i32, i32* %mapmaxy, align 8
  %cmp20 = icmp sgt i32 %21, %22
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %mapmaxy22 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %23 = load i32, i32* %mapmaxy22, align 8
  store i32 %23, i32* %y2, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %24 = load i32, i32* %y1, align 4
  store i32 %24, i32* %y, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc35, %if.end23
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %y2, align 4
  %cmp25 = icmp sle i32 %25, %26
  br i1 %cmp25, label %for.body26, label %for.end37

for.body26:                                       ; preds = %for.cond24
  %27 = load i32, i32* %x1, align 4
  store i32 %27, i32* %x, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body26
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %x2, align 4
  %cmp28 = icmp sle i32 %28, %29
  br i1 %cmp28, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond27
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %30 = load i16*, i16** %mmapp, align 8
  %31 = load i32, i32* %x, align 4
  %32 = load i32, i32* %y, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %33 = load i32, i32* %mapsizex, align 4
  %mul = mul nsw i32 %32, %33
  %add30 = add nsw i32 %31, %mul
  %idxprom = sext i32 %add30 to i64
  %arrayidx = getelementptr inbounds i16, i16* %30, i64 %idxprom
  %34 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %34 to i32
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %35 = load i16, i16* %fillnum, align 8
  %conv31 = zext i16 %35 to i32
  %cmp32 = icmp ne i32 %conv, %conv31
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body29
  %36 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* %this1, %class.flexarray* dereferenceable(16) %36, i32 %37, i32 %38)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %for.body29
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %39 = load i32, i32* %x, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond27

for.end:                                          ; preds = %for.cond27
  br label %for.inc35

for.inc35:                                        ; preds = %for.end
  %40 = load i32, i32* %y, align 4
  %inc36 = add nsw i32 %40, 1
  store i32 %inc36, i32* %y, align 4
  br label %for.cond24

for.end37:                                        ; preds = %for.cond24
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %41 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %41, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond

for.end40:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  %index.addr = alloca i32, align 4
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  %0 = load %struct.pointt*, %struct.pointt** %ep, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.pointt, %struct.pointt* %0, i64 %idxprom
  ret %struct.pointt* %arrayidx
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* %this, i32 %x0, i32 %y0, i32* dereferenceable(4) %xpl, i32* dereferenceable(4) %ypl) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %xpl.addr = alloca i32*, align 8
  %ypl.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %bound1arp = alloca %class.flexarray, align 8
  %bound2arp = alloca %class.flexarray, align 8
  %boundl = alloca i32, align 4
  %flodd = alloca i8, align 1
  %newflodd = alloca i8, align 1
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32* %xpl, i32** %xpl.addr, align 8
  store i32* %ypl, i32** %ypl.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %flfind = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 4
  store i8 0, i8* %flfind, align 4
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %0 = load i16, i16* %fillnum, align 8
  %inc = add i16 %0, 1
  store i16 %inc, i16* %fillnum, align 8
  %fillnum2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %1 = load i16, i16* %fillnum2, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %2 = load i16*, i16** %mmapp, align 8
  %3 = bitcast i16* %2 to i8*
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %4 = load i32, i32* %mapsizex, align 4
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %5 = load i32, i32* %mapsizey, align 8
  %mul = mul nsw i32 %4, %5
  %conv3 = sext i32 %mul to i64
  %mul4 = mul i64 %conv3, 2
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %mul4, i32 2, i1 false)
  %fillnum5 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  store i16 1, i16* %fillnum5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32*, i32** %xpl.addr, align 8
  store i32 -1, i32* %6, align 4
  %7 = load i32*, i32** %ypl.addr, align 8
  store i32 -1, i32* %7, align 4
  %freepointx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 2
  store i32 -1, i32* %freepointx, align 4
  %freepointy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 3
  store i32 -1, i32* %freepointy, align 8
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %bound1arp, i32 128)
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %bound2arp, i32 128)
  %8 = load i32, i32* %x0.addr, align 4
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %y0.addr, align 4
  %cmp7 = icmp sge i32 %9, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end22

land.lhs.true8:                                   ; preds = %land.lhs.true
  %10 = load i32, i32* %x0.addr, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %11 = load i32, i32* %mapmaxx, align 4
  %cmp9 = icmp sle i32 %10, %11
  br i1 %cmp9, label %land.lhs.true10, label %if.end22

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %12 = load i32, i32* %y0.addr, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %13 = load i32, i32* %mapmaxy, align 8
  %cmp11 = icmp sle i32 %12, %13
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %land.lhs.true10
  %mmapp13 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %14 = load i16*, i16** %mmapp13, align 8
  %15 = load i32, i32* %x0.addr, align 4
  %16 = load i32, i32* %y0.addr, align 4
  %mapsizex14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %17 = load i32, i32* %mapsizex14, align 4
  %mul15 = mul nsw i32 %16, %17
  %add = add nsw i32 %15, %mul15
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2
  %conv16 = zext i16 %18 to i32
  %fillnum17 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %19 = load i16, i16* %fillnum17, align 8
  %conv18 = zext i16 %19 to i32
  %cmp19 = icmp ne i32 %conv16, %conv18
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then12
  %20 = load i32, i32* %x0.addr, align 4
  %21 = load i32, i32* %y0.addr, align 4
  call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* %this1, %class.flexarray* dereferenceable(16) %bound1arp, i32 %20, i32 %21)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then12
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true10, %land.lhs.true8, %land.lhs.true, %if.end
  %22 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, i32* %x1, align 4
  %23 = load i32, i32* %y0.addr, align 4
  %sub23 = sub nsw i32 %23, 1
  store i32 %sub23, i32* %y1, align 4
  %24 = load i32, i32* %x0.addr, align 4
  %add24 = add nsw i32 %24, 1
  store i32 %add24, i32* %x2, align 4
  %25 = load i32, i32* %y0.addr, align 4
  %add25 = add nsw i32 %25, 1
  store i32 %add25, i32* %y2, align 4
  %26 = load i32, i32* %x1, align 4
  %cmp26 = icmp slt i32 %26, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 0, i32* %x1, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end22
  %27 = load i32, i32* %y1, align 4
  %cmp29 = icmp slt i32 %27, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  store i32 0, i32* %y1, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28
  %28 = load i32, i32* %x2, align 4
  %mapmaxx32 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %29 = load i32, i32* %mapmaxx32, align 4
  %cmp33 = icmp sgt i32 %28, %29
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %mapmaxx35 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %30 = load i32, i32* %mapmaxx35, align 4
  store i32 %30, i32* %x2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %31 = load i32, i32* %y2, align 4
  %mapmaxy37 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %32 = load i32, i32* %mapmaxy37, align 8
  %cmp38 = icmp sgt i32 %31, %32
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %mapmaxy40 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %33 = load i32, i32* %mapmaxy40, align 8
  store i32 %33, i32* %y2, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36
  %34 = load i32, i32* %y1, align 4
  store i32 %34, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %if.end41
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %y2, align 4
  %cmp42 = icmp sle i32 %35, %36
  br i1 %cmp42, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %x1, align 4
  store i32 %37, i32* %x, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %for.body
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %x2, align 4
  %cmp44 = icmp sle i32 %38, %39
  br i1 %cmp44, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond43
  %mmapp46 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %40 = load i16*, i16** %mmapp46, align 8
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %y, align 4
  %mapsizex47 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %43 = load i32, i32* %mapsizex47, align 4
  %mul48 = mul nsw i32 %42, %43
  %add49 = add nsw i32 %41, %mul48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds i16, i16* %40, i64 %idxprom50
  %44 = load i16, i16* %arrayidx51, align 2
  %conv52 = zext i16 %44 to i32
  %fillnum53 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  %45 = load i16, i16* %fillnum53, align 8
  %conv54 = zext i16 %45 to i32
  %cmp55 = icmp ne i32 %conv52, %conv54
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %for.body45
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %y, align 4
  call void @_ZN9regmngobj10addtoboundER9flexarrayI6pointtEii(%class.regmngobj* %this1, %class.flexarray* dereferenceable(16) %bound1arp, i32 %46, i32 %47)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %for.body45
  br label %for.inc

for.inc:                                          ; preds = %if.end57
  %48 = load i32, i32* %x, align 4
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, i32* %x, align 4
  br label %for.cond43

for.end:                                          ; preds = %for.cond43
  br label %for.inc59

for.inc59:                                        ; preds = %for.end
  %49 = load i32, i32* %y, align 4
  %inc60 = add nsw i32 %49, 1
  store i32 %inc60, i32* %y, align 4
  br label %for.cond

for.end61:                                        ; preds = %for.cond
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %bound1arp, i32 0, i32 1
  %50 = load i32, i32* %elemqu, align 8
  store i32 %50, i32* %boundl, align 4
  store i8 0, i8* %flodd, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end72, %for.end61
  %51 = load i32, i32* %boundl, align 4
  %cmp62 = icmp ne i32 %51, 0
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %flfind63 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 4
  %52 = load i8, i8* %flfind63, align 4
  %tobool = trunc i8 %52 to i1
  %conv64 = zext i1 %tobool to i32
  %cmp65 = icmp eq i32 %conv64, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %53 = phi i1 [ false, %while.cond ], [ %cmp65, %land.rhs ]
  br i1 %53, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %54 = load i8, i8* %flodd, align 1
  %tobool66 = trunc i8 %54 to i1
  %conv67 = zext i1 %tobool66 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %if.then69, label %if.else

if.then69:                                        ; preds = %while.body
  call void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* %this1, %class.flexarray* dereferenceable(16) %bound1arp, %class.flexarray* dereferenceable(16) %bound2arp)
  %elemqu70 = getelementptr inbounds %class.flexarray, %class.flexarray* %bound2arp, i32 0, i32 1
  %55 = load i32, i32* %elemqu70, align 8
  store i32 %55, i32* %boundl, align 4
  store i8 1, i8* %newflodd, align 1
  br label %if.end72

if.else:                                          ; preds = %while.body
  call void @_ZN9regmngobj10makebound2ER9flexarrayI6pointtES3_(%class.regmngobj* %this1, %class.flexarray* dereferenceable(16) %bound2arp, %class.flexarray* dereferenceable(16) %bound1arp)
  %elemqu71 = getelementptr inbounds %class.flexarray, %class.flexarray* %bound1arp, i32 0, i32 1
  %56 = load i32, i32* %elemqu71, align 8
  store i32 %56, i32* %boundl, align 4
  store i8 0, i8* %newflodd, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then69
  %57 = load i8, i8* %newflodd, align 1
  %tobool73 = trunc i8 %57 to i1
  %frombool = zext i1 %tobool73 to i8
  store i8 %frombool, i8* %flodd, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %bound1arp)
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %bound2arp)
  %freepointx74 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 2
  %58 = load i32, i32* %freepointx74, align 4
  %59 = load i32*, i32** %xpl.addr, align 8
  store i32 %58, i32* %59, align 4
  %freepointy75 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 3
  %60 = load i32, i32* %freepointy75, align 8
  %61 = load i32*, i32** %ypl.addr, align 8
  store i32 %60, i32* %61, align 4
  %flfind76 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 4
  %62 = load i8, i8* %flfind76, align 4
  %tobool77 = trunc i8 %62 to i1
  ret i1 %tobool77
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %this, i32 %maxelemquin) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv3, i32 16)
  %2 = bitcast i8* %call to %struct.pointt*
  %ep = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  store %struct.pointt* %2, %struct.pointt** %ep, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray*, align 8
  store %class.flexarray* %this, %class.flexarray** %this.addr, align 8
  %this1 = load %class.flexarray*, %class.flexarray** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray, %class.flexarray* %this1, i32 0, i32 0
  %0 = load %struct.pointt*, %struct.pointt** %ep, align 8
  %1 = bitcast %struct.pointt* %0 to i8*
  call void @_Z13_aligned_freePv(i8* %1)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* %this, %class.flexarray* dereferenceable(16) %barp, i32 %x, i32 %y) #0 align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  %barp.addr = alloca %class.flexarray*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ref.tmp = alloca %struct.pointt, align 4
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  store %class.flexarray* %barp, %class.flexarray** %barp.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %regmngp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i32 0, i32 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call zeroext i8 @_ZN11regboundobj4mappEii(%class.regboundobj* %this1, i32 %1, i32 %2)
  %idxprom = zext i8 %call to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x.addr, align 4
  %xc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 6
  %5 = load i32, i32* %xc, align 8
  %sub = sub nsw i32 %4, %5
  %call2 = call i32 @_Z3sqri(i32 %sub)
  %6 = load i32, i32* %y.addr, align 4
  %yc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 7
  %7 = load i32, i32* %yc, align 4
  %sub3 = sub nsw i32 %6, %7
  %call4 = call i32 @_Z3sqri(i32 %sub3)
  %add = add nsw i32 %call2, %call4
  %conv = sitofp i32 %add to float
  %call5 = call i32 @_Z7myroundf(float %conv)
  %regionradius2 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 9
  %8 = load i32, i32* %regionradius2, align 4
  %cmp = icmp sle i32 %call5, %8
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %class.flexarray*, %class.flexarray** %barp.addr, align 8
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %10, i32 %11)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %9, %struct.pointt* dereferenceable(8) %ref.tmp)
  %regionp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 5
  %12 = load %class.regobj*, %class.regobj** %regionp, align 8
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %call7 = call dereferenceable(8) %class.regobj** @_ZN11regboundobj7regmappEii(%class.regboundobj* %this1, i32 %13, i32 %14)
  store %class.regobj* %12, %class.regobj** %call7, align 8
  %regionp8 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 5
  %15 = load %class.regobj*, %class.regobj** %regionp8, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %15, i32 0, i32 4
  %16 = load i32, i32* %square, align 8
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %square, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end10

if.else:                                          ; preds = %entry
  %17 = load i32, i32* %x.addr, align 4
  %18 = load i32, i32* %y.addr, align 4
  %call9 = call dereferenceable(8) %class.regobj** @_ZN11regboundobj7regmappEii(%class.regboundobj* %this1, i32 %17, i32 %18)
  store %class.regobj* null, %class.regobj** %call9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i8 @_ZN11regboundobj4mappEii(%class.regboundobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %landscapemapp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 11
  %0 = load i8*, i8** %landscapemapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 12
  %3 = load i32, i32* %mapsizex, align 8
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z3sqri(i32 %x) #2 comdat {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z7myroundf(float %x) #2 comdat {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %add = fadd float %0, 5.000000e-01
  %conv = fptosi float %add to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.regobj** @_ZN11regboundobj7regmappEii(%class.regboundobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %regionmapp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 10
  %0 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 12
  %3 = load i32, i32* %mapsizex, align 8
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %0, i64 %idxprom
  ret %class.regobj** %arrayidx
}

; Function Attrs: noinline uwtable
define void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* %this, %class.flexarray* dereferenceable(16) %b1arp, %class.flexarray* dereferenceable(16) %b2arp) #0 align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  %b1arp.addr = alloca %class.flexarray*, align 8
  %b2arp.addr = alloca %class.flexarray*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  store %class.flexarray* %b1arp, %class.flexarray** %b1arp.addr, align 8
  store %class.flexarray* %b2arp, %class.flexarray** %b2arp.addr, align 8
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %0 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  call void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %0)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %2, i32 0, i32 1
  %3 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %4 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %5 = load i32, i32* %j, align 4
  %call = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %4, i32 %5)
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %call, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %x1, align 4
  %7 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call4 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %7, i32 %8)
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %call4, i32 0, i32 1
  %9 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %9, 1
  store i32 %sub6, i32* %y1, align 4
  %10 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %11 = load i32, i32* %j, align 4
  %call7 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %10, i32 %11)
  %x8 = getelementptr inbounds %struct.pointt, %struct.pointt* %call7, i32 0, i32 0
  %12 = load i32, i32* %x8, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %x2, align 4
  %13 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %14 = load i32, i32* %j, align 4
  %call9 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %13, i32 %14)
  %y10 = getelementptr inbounds %struct.pointt, %struct.pointt* %call9, i32 0, i32 1
  %15 = load i32, i32* %y10, align 4
  %add11 = add nsw i32 %15, 1
  store i32 %add11, i32* %y2, align 4
  %16 = load i32, i32* %x1, align 4
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %y1, align 4
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 0, i32* %y1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %18 = load i32, i32* %x2, align 4
  %mapmaxx = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 14
  %19 = load i32, i32* %mapmaxx, align 8
  %cmp16 = icmp sgt i32 %18, %19
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %mapmaxx18 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 14
  %20 = load i32, i32* %mapmaxx18, align 8
  store i32 %20, i32* %x2, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %21 = load i32, i32* %y2, align 4
  %mapmaxy = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 15
  %22 = load i32, i32* %mapmaxy, align 4
  %cmp20 = icmp sgt i32 %21, %22
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %mapmaxy22 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 15
  %23 = load i32, i32* %mapmaxy22, align 4
  store i32 %23, i32* %y2, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %24 = load i32, i32* %y1, align 4
  store i32 %24, i32* %y, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %if.end23
  %25 = load i32, i32* %y, align 4
  %26 = load i32, i32* %y2, align 4
  %cmp25 = icmp sle i32 %25, %26
  br i1 %cmp25, label %for.body26, label %for.end36

for.body26:                                       ; preds = %for.cond24
  %27 = load i32, i32* %x1, align 4
  store i32 %27, i32* %x, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc, %for.body26
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %x2, align 4
  %cmp28 = icmp sle i32 %28, %29
  br i1 %cmp28, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond27
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %y, align 4
  %call30 = call dereferenceable(8) %class.regobj** @_ZN11regboundobj7regmappEii(%class.regboundobj* %this1, i32 %30, i32 %31)
  %32 = load %class.regobj*, %class.regobj** %call30, align 8
  %cmp31 = icmp eq %class.regobj* %32, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body29
  %33 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %y, align 4
  call void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* %this1, %class.flexarray* dereferenceable(16) %33, i32 %34, i32 %35)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.body29
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %36 = load i32, i32* %x, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond27

for.end:                                          ; preds = %for.cond27
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %37 = load i32, i32* %y, align 4
  %inc35 = add nsw i32 %37, 1
  store i32 %inc35, i32* %y, align 4
  br label %for.cond24

for.end36:                                        ; preds = %for.cond24
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %38 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %38, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond

for.end39:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN11regboundobj4stepEv(%class.regboundobj* %this) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.regboundobj*, align 8
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %boundl = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  %0 = load i32, i32* %boundl, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 17
  %1 = load i8, i8* %flexist, align 8
  %tobool = trunc i8 %1 to i1
  %conv = zext i1 %tobool to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %flodd = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 2
  %2 = load i8, i8* %flodd, align 8
  %tobool3 = trunc i8 %2 to i1
  %conv4 = zext i1 %tobool3 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %boundar = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 1
  call void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* %this1, %class.flexarray* dereferenceable(16) %boundar, %class.flexarray* dereferenceable(16) %bound2arp)
  %bound2arp7 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 1
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %bound2arp7, i32 0, i32 1
  %3 = load i32, i32* %elemqu, align 8
  %boundl8 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  store i32 %3, i32* %boundl8, align 4
  %flodd9 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 2
  store i8 1, i8* %flodd9, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end
  %bound2arp10 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 1
  %boundar11 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  call void @_ZN11regboundobj10makebound2ER9flexarrayI6pointtES3_(%class.regboundobj* %this1, %class.flexarray* dereferenceable(16) %bound2arp10, %class.flexarray* dereferenceable(16) %boundar11)
  %boundar12 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  %elemqu13 = getelementptr inbounds %class.flexarray, %class.flexarray* %boundar12, i32 0, i32 1
  %4 = load i32, i32* %elemqu13, align 8
  %boundl14 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  store i32 %4, i32* %boundl14, align 4
  %flodd15 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 2
  store i8 0, i8* %flodd15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then6
  %boundl17 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  %5 = load i32, i32* %boundl17, align 4
  %cmp18 = icmp eq i32 %5, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end16
  store i1 false, i1* %retval, align 1
  br label %return

if.else20:                                        ; preds = %if.end16
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else20, %if.then19, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline uwtable
define void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* %this, i32 %x0, i32 %y0, %class.regobj* %regionpin, %class.regmngobj* %regmngpin) #0 align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %regionpin.addr = alloca %class.regobj*, align 8
  %regmngpin.addr = alloca %class.regmngobj*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store %class.regobj* %regionpin, %class.regobj** %regionpin.addr, align 8
  store %class.regmngobj* %regmngpin, %class.regmngobj** %regmngpin.addr, align 8
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %0 = load i32, i32* %x0.addr, align 4
  %xc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 6
  store i32 %0, i32* %xc, align 8
  %1 = load i32, i32* %y0.addr, align 4
  %yc = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 7
  store i32 %1, i32* %yc, align 4
  %2 = load %class.regobj*, %class.regobj** %regionpin.addr, align 8
  %regionp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 5
  store %class.regobj* %2, %class.regobj** %regionp, align 8
  %3 = load %class.regmngobj*, %class.regmngobj** %regmngpin.addr, align 8
  %regmngp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  store %class.regmngobj* %3, %class.regmngobj** %regmngp, align 8
  %regmngp2 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %4 = load %class.regmngobj*, %class.regmngobj** %regmngp2, align 8
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %4, i32 0, i32 6
  %5 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %regionmapp3 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 10
  store %class.regobj** %5, %class.regobj*** %regionmapp3, align 8
  %regmngp4 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %6 = load %class.regmngobj*, %class.regmngobj** %regmngp4, align 8
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %6, i32 0, i32 7
  %7 = load i8*, i8** %landscapemapp, align 8
  %landscapemapp5 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 11
  store i8* %7, i8** %landscapemapp5, align 8
  %regmngp6 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %8 = load %class.regmngobj*, %class.regmngobj** %regmngp6, align 8
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %8, i32 0, i32 16
  %9 = load i32, i32* %mapsizex, align 4
  %mapsizex7 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 12
  store i32 %9, i32* %mapsizex7, align 8
  %regmngp8 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %10 = load %class.regmngobj*, %class.regmngobj** %regmngp8, align 8
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %10, i32 0, i32 17
  %11 = load i32, i32* %mapsizey, align 8
  %mapsizey9 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 13
  store i32 %11, i32* %mapsizey9, align 4
  %regmngp10 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %12 = load %class.regmngobj*, %class.regmngobj** %regmngp10, align 8
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %12, i32 0, i32 12
  %13 = load i32, i32* %mapmaxx, align 4
  %mapmaxx11 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 14
  store i32 %13, i32* %mapmaxx11, align 8
  %regmngp12 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %14 = load %class.regmngobj*, %class.regmngobj** %regmngp12, align 8
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %14, i32 0, i32 13
  %15 = load i32, i32* %mapmaxy, align 8
  %mapmaxy13 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 15
  store i32 %15, i32* %mapmaxy13, align 4
  %regmngp14 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 16
  %16 = load %class.regmngobj*, %class.regmngobj** %regmngp14, align 8
  %regionradius = getelementptr inbounds %class.regmngobj, %class.regmngobj* %16, i32 0, i32 9
  %17 = load i32, i32* %regionradius, align 8
  %regionradius15 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 8
  store i32 %17, i32* %regionradius15, align 8
  %regionradius16 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 8
  %18 = load i32, i32* %regionradius16, align 8
  %regionradius17 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 8
  %19 = load i32, i32* %regionradius17, align 8
  %mul = mul nsw i32 %18, %19
  %regionradius2 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 9
  store i32 %mul, i32* %regionradius2, align 4
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 17
  %20 = load i8, i8* %flexist, align 8
  %tobool = trunc i8 %20 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %boundl = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  store i32 0, i32* %boundl, align 4
  br label %return

if.end:                                           ; preds = %entry
  %regionp18 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 5
  %21 = load %class.regobj*, %class.regobj** %regionp18, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %21, i32 0, i32 4
  store i32 0, i32* %square, align 8
  %boundar = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %boundar, i32 128)
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 1
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %bound2arp, i32 128)
  %22 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, i32* %x1, align 4
  %23 = load i32, i32* %y0.addr, align 4
  %sub19 = sub nsw i32 %23, 1
  store i32 %sub19, i32* %y1, align 4
  %24 = load i32, i32* %x0.addr, align 4
  %add = add nsw i32 %24, 1
  store i32 %add, i32* %x2, align 4
  %25 = load i32, i32* %y0.addr, align 4
  %add20 = add nsw i32 %25, 1
  store i32 %add20, i32* %y2, align 4
  %26 = load i32, i32* %x1, align 4
  %cmp21 = icmp slt i32 %26, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  store i32 0, i32* %x1, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  %27 = load i32, i32* %y1, align 4
  %cmp24 = icmp slt i32 %27, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 0, i32* %y1, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23
  %28 = load i32, i32* %x2, align 4
  %mapmaxx27 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 14
  %29 = load i32, i32* %mapmaxx27, align 8
  %cmp28 = icmp sgt i32 %28, %29
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %mapmaxx30 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 14
  %30 = load i32, i32* %mapmaxx30, align 8
  store i32 %30, i32* %x2, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %31 = load i32, i32* %y2, align 4
  %mapmaxy32 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 15
  %32 = load i32, i32* %mapmaxy32, align 4
  %cmp33 = icmp sgt i32 %31, %32
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  %mapmaxy35 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 15
  %33 = load i32, i32* %mapmaxy35, align 4
  store i32 %33, i32* %y2, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31
  %34 = load i32, i32* %y1, align 4
  store i32 %34, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %if.end36
  %35 = load i32, i32* %y, align 4
  %36 = load i32, i32* %y2, align 4
  %cmp37 = icmp sle i32 %35, %36
  br i1 %cmp37, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %x1, align 4
  store i32 %37, i32* %x, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %for.body
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %x2, align 4
  %cmp39 = icmp sle i32 %38, %39
  br i1 %cmp39, label %for.body40, label %for.end

for.body40:                                       ; preds = %for.cond38
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN11regboundobj7regmappEii(%class.regboundobj* %this1, i32 %40, i32 %41)
  %42 = load %class.regobj*, %class.regobj** %call, align 8
  %cmp41 = icmp eq %class.regobj* %42, null
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.body40
  %boundar43 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  %43 = load i32, i32* %x, align 4
  %44 = load i32, i32* %y, align 4
  call void @_ZN11regboundobj10addtoboundER9flexarrayI6pointtEii(%class.regboundobj* %this1, %class.flexarray* dereferenceable(16) %boundar43, i32 %43, i32 %44)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %for.body40
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %45 = load i32, i32* %x, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond38

for.end:                                          ; preds = %for.cond38
  br label %for.inc45

for.inc45:                                        ; preds = %for.end
  %46 = load i32, i32* %y, align 4
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, i32* %y, align 4
  br label %for.cond

for.end47:                                        ; preds = %for.cond
  %flodd = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 2
  store i8 0, i8* %flodd, align 8
  %boundar48 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %boundar48, i32 0, i32 1
  %47 = load i32, i32* %elemqu, align 8
  %boundl49 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 4
  store i32 %47, i32* %boundl49, align 4
  br label %return

return:                                           ; preds = %for.end47, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN11regboundobj7destroyEv(%class.regboundobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regboundobj*, align 8
  store %class.regboundobj* %this, %class.regboundobj** %this.addr, align 8
  %this1 = load %class.regboundobj*, %class.regboundobj** %this.addr, align 8
  %boundar = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 0
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %boundar)
  %bound2arp = getelementptr inbounds %class.regboundobj, %class.regboundobj* %this1, i32 0, i32 1
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %bound2arp)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj6createEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  call void @_ZN15largesolidarrayIP6regobjE6createEi(%class.largesolidarray* %rarp, i32 16)
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  store %class.regobj** null, %class.regobj*** %regionmapp, align 8
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  store i8* null, i8** %landscapemapp, align 8
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  store i16* null, i16** %mmapp, align 8
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  store i32 0, i32* %regfillnum, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN15largesolidarrayIP6regobjE6createEi(%class.largesolidarray* %this, i32 %maxelemquin) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  %maxelemquin.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to %class.regobj**
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  store %class.regobj** %2, %class.regobj*** %ep, align 8
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  %maxelemqu3 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %3 = load i32, i32* %maxelemqu3, align 4
  call void @_ZN9flexarrayIiE6createEi(%class.flexstack* %dccellar, i32 %3)
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  %maxelemqu4 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %4 = load i32, i32* %maxelemqu4, align 4
  call void @_ZN9flexarrayIiE6createEi(%class.flexstack* %rccellar, i32 %4)
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  %maxelemqu5 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %5 = load i32, i32* %maxelemqu5, align 4
  call void @_ZN9flexstackIiE6createEi(%class.flexstack* %freecellholder, i32 %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %maxelemqu6 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %7 = load i32, i32* %maxelemqu6, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %freecellholder7 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  %8 = load i32, i32* %i, align 4
  call void @_ZN9flexstackIiE3putEi(%class.flexstack* %freecellholder7, i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayIiE6createEi(%class.flexstack* %this, i32 %maxelemquin) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv3, i32 16)
  %2 = bitcast i8* %call to i32*
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  store i32* %2, i32** %ep, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexstackIiE6createEi(%class.flexstack* %this, i32 %maxelemquin) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to i32*
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  store i32* %2, i32** %ep, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexstackIiE3putEi(%class.flexstack* %this, i32 %elem) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  %elem.addr = alloca i32, align 4
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  store i32 %elem, i32* %elem.addr, align 4
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN9flexstackIiE8doublingEv(%class.flexstack* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %elem.addr, align 4
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %3 = load i32*, i32** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  %4 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %elemqu3 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  %5 = load i32, i32* %elemqu3, align 8
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %elemqu3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexstackIiE8doublingEv(%class.flexstack* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  %newep = alloca i32*, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %newep, align 8
  %3 = load i32*, i32** %newep, align 8
  %4 = bitcast i32* %3 to i8*
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %5 = load i32*, i32** %ep, align 8
  %6 = bitcast i32* %5 to i8*
  %maxelemqu2 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %7 = load i32, i32* %maxelemqu2, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = mul i64 %conv3, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul4, i32 4, i1 false)
  %ep5 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %8 = load i32*, i32** %ep5, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #10
  %10 = load i32*, i32** %newep, align 8
  %ep6 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  store i32* %10, i32** %ep6, align 8
  %11 = load i32, i32* %newelemqu, align 4
  %maxelemqu7 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  store i32 %11, i32* %maxelemqu7, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj7destroyEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  call void @_ZN6regobj7destroyEv(%class.regobj* %3)
  %rarp3 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %4 = load i32, i32* %i, align 4
  %call4 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp3, i32 %4)
  %5 = load %class.regobj*, %class.regobj** %call4, align 8
  %isnull = icmp eq %class.regobj* %5, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.body
  %6 = bitcast %class.regobj* %5 to i8*
  call void @_ZdlPv(i8* %6) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.body
  br label %for.inc

for.inc:                                          ; preds = %delete.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %rarp5 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  call void @_ZN15largesolidarrayIP6regobjE7destroyEv(%class.largesolidarray* %rarp5)
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  %8 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %9 = bitcast %class.regobj** %8 to i8*
  call void @free(i8* %9) #10
  %regionmapp6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  store %class.regobj** null, %class.regobj*** %regionmapp6, align 8
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  %10 = load i8*, i8** %landscapemapp, align 8
  call void @free(i8* %10) #10
  %landscapemapp7 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  store i8* null, i8** %landscapemapp7, align 8
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %11 = load i16*, i16** %mmapp, align 8
  %12 = bitcast i16* %11 to i8*
  call void @free(i8* %12) #10
  %mmapp8 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  store i16* null, i16** %mmapp8, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN15largesolidarrayIP6regobjE7destroyEv(%class.largesolidarray* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  call void @_ZN9flexarrayIiE7destroyEv(%class.flexstack* %rccellar)
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  call void @_ZN9flexarrayIiE7destroyEv(%class.flexstack* %dccellar)
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  call void @_ZN9flexstackIiE7destroyEv(%class.flexstack* %freecellholder)
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %0 = load %class.regobj**, %class.regobj*** %ep, align 8
  %1 = bitcast %class.regobj** %0 to i8*
  call void @free(i8* %1) #10
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayIiE7destroyEv(%class.flexstack* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %0 = load i32*, i32** %ep, align 8
  %1 = bitcast i32* %0 to i8*
  call void @_Z13_aligned_freePv(i8* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexstackIiE7destroyEv(%class.flexstack* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %0 = load i32*, i32** %ep, align 8
  %1 = bitcast i32* %0 to i8*
  call void @free(i8* %1) #10
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN9regmngobj7loadmapEPKc(%class.regmngobj* %this, i8* %fn) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.regmngobj*, align 8
  %fn.addr = alloca i8*, align 8
  %hf = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %hf, align 4
  %1 = load i32, i32* %hf, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hf, align 4
  %xRunion = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 14
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %xR1 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i32 0, i32 0
  %call2 = call i64 @read(i32 %2, i8* %xR1, i64 1)
  %3 = load i32, i32* %hf, align 4
  %xRunion3 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 14
  %xRstruc4 = bitcast %union.anon* %xRunion3 to %struct.anon*
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc4, i32 0, i32 1
  %call5 = call i64 @read(i32 %3, i8* %xR2, i64 1)
  %4 = load i32, i32* %hf, align 4
  %xRunion6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 14
  %xRstruc7 = bitcast %union.anon* %xRunion6 to %struct.anon*
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc7, i32 0, i32 2
  %call8 = call i64 @read(i32 %4, i8* %xR3, i64 1)
  %5 = load i32, i32* %hf, align 4
  %xRunion9 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 14
  %xRstruc10 = bitcast %union.anon* %xRunion9 to %struct.anon*
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc10, i32 0, i32 3
  %call11 = call i64 @read(i32 %5, i8* %xR4, i64 1)
  %6 = load i32, i32* %hf, align 4
  %yRunion = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 15
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %yR1 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i32 0, i32 0
  %call12 = call i64 @read(i32 %6, i8* %yR1, i64 1)
  %7 = load i32, i32* %hf, align 4
  %yRunion13 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 15
  %yRstruc14 = bitcast %union.anon* %yRunion13 to %struct.anon*
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc14, i32 0, i32 1
  %call15 = call i64 @read(i32 %7, i8* %yR2, i64 1)
  %8 = load i32, i32* %hf, align 4
  %yRunion16 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 15
  %yRstruc17 = bitcast %union.anon* %yRunion16 to %struct.anon*
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc17, i32 0, i32 2
  %call18 = call i64 @read(i32 %8, i8* %yR3, i64 1)
  %9 = load i32, i32* %hf, align 4
  %yRunion19 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 15
  %yRstruc20 = bitcast %union.anon* %yRunion19 to %struct.anon*
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc20, i32 0, i32 3
  %call21 = call i64 @read(i32 %9, i8* %yR4, i64 1)
  %xRunion22 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 14
  %xRmapsizex = bitcast %union.anon* %xRunion22 to i32*
  %10 = load i32, i32* %xRmapsizex, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  store i32 %10, i32* %mapsizex, align 4
  %yRunion23 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 15
  %yRmapsizey = bitcast %union.anon* %yRunion23 to i32*
  %11 = load i32, i32* %yRmapsizey, align 8
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  store i32 %11, i32* %mapsizey, align 8
  %mapsizex24 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %12 = load i32, i32* %mapsizex24, align 4
  %sub = sub nsw i32 %12, 1
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  store i32 %sub, i32* %mapmaxx, align 4
  %mapsizey25 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %13 = load i32, i32* %mapsizey25, align 8
  %sub26 = sub nsw i32 %13, 1
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  store i32 %sub26, i32* %mapmaxy, align 8
  %mapsizex27 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %14 = load i32, i32* %mapsizex27, align 4
  %mapsizey28 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %15 = load i32, i32* %mapsizey28, align 8
  %mul = mul nsw i32 %14, %15
  %conv = sext i32 %mul to i64
  %mul29 = mul i64 %conv, 8
  %call30 = call noalias i8* @malloc(i64 %mul29) #10
  %16 = bitcast i8* %call30 to %class.regobj**
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  store %class.regobj** %16, %class.regobj*** %regionmapp, align 8
  %mapsizex31 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %17 = load i32, i32* %mapsizex31, align 4
  %mapsizey32 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %18 = load i32, i32* %mapsizey32, align 8
  %mul33 = mul nsw i32 %17, %18
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 %conv34, 1
  %call36 = call noalias i8* @malloc(i64 %mul35) #10
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  store i8* %call36, i8** %landscapemapp, align 8
  %mapsizex37 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %19 = load i32, i32* %mapsizex37, align 4
  %mapsizey38 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %20 = load i32, i32* %mapsizey38, align 8
  %mul39 = mul nsw i32 %19, %20
  %conv40 = sext i32 %mul39 to i64
  %mul41 = mul i64 %conv40, 2
  %call42 = call noalias i8* @malloc(i64 %mul41) #10
  %21 = bitcast i8* %call42 to i16*
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  store i16* %21, i16** %mmapp, align 8
  %mmapp43 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %22 = load i16*, i16** %mmapp43, align 8
  %23 = bitcast i16* %22 to i8*
  %mapsizex44 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %24 = load i32, i32* %mapsizex44, align 4
  %mapsizey45 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %25 = load i32, i32* %mapsizey45, align 8
  %mul46 = mul nsw i32 %24, %25
  %conv47 = sext i32 %mul46 to i64
  %mul48 = mul i64 %conv47, 2
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 %mul48, i32 2, i1 false)
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  store i16 0, i16* %fillnum, align 8
  %26 = load i32, i32* %hf, align 4
  %landscapemapp49 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  %27 = load i8*, i8** %landscapemapp49, align 8
  %mapsizex50 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %28 = load i32, i32* %mapsizex50, align 4
  %mapsizey51 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %29 = load i32, i32* %mapsizey51, align 8
  %mul52 = mul nsw i32 %28, %29
  %conv53 = sext i32 %mul52 to i64
  %mul54 = mul i64 %conv53, 1
  %call55 = call i64 @read(i32 %26, i8* %27, i64 %mul54)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4
  %cmp56 = icmp slt i32 %30, 256
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %flpasablear57 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %arrayidx58 = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear57, i64 0, i64 0
  store i8 1, i8* %arrayidx58, align 8
  %33 = load i32, i32* %hf, align 4
  %call59 = call i32 @close(i32 %33)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %34 = load i1, i1* %retval, align 1
  ret i1 %34
}

declare i32 @open(i8*, i32, ...) #7

declare i64 @read(i32, i8*, i64) #7

declare i32 @close(i32) #7

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_ZN9regmngobj7initmapEii(%class.regmngobj* %this, i32 %mapsizexin, i32 %mapsizeyin) #2 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %mapsizexin.addr = alloca i32, align 4
  %mapsizeyin.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %mapsizexin, i32* %mapsizexin.addr, align 4
  store i32 %mapsizeyin, i32* %mapsizeyin.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %0 = load i32, i32* %mapsizexin.addr, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  store i32 %0, i32* %mapsizex, align 4
  %1 = load i32, i32* %mapsizeyin.addr, align 4
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  store i32 %1, i32* %mapsizey, align 8
  %mapsizex2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %2 = load i32, i32* %mapsizex2, align 4
  %sub = sub nsw i32 %2, 1
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  store i32 %sub, i32* %mapmaxx, align 4
  %mapsizey3 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %3 = load i32, i32* %mapsizey3, align 8
  %sub4 = sub nsw i32 %3, 1
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  store i32 %sub4, i32* %mapmaxy, align 8
  %mapsizex5 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %4 = load i32, i32* %mapsizex5, align 4
  %mapsizey6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %5 = load i32, i32* %mapsizey6, align 8
  %mul = mul nsw i32 %4, %5
  %conv = sext i32 %mul to i64
  %mul7 = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul7) #10
  %6 = bitcast i8* %call to %class.regobj**
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  store %class.regobj** %6, %class.regobj*** %regionmapp, align 8
  %mapsizex8 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %7 = load i32, i32* %mapsizex8, align 4
  %mapsizey9 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %8 = load i32, i32* %mapsizey9, align 8
  %mul10 = mul nsw i32 %7, %8
  %conv11 = sext i32 %mul10 to i64
  %mul12 = mul i64 %conv11, 1
  %call13 = call noalias i8* @malloc(i64 %mul12) #10
  %landscapemapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 7
  store i8* %call13, i8** %landscapemapp, align 8
  %mapsizex14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %9 = load i32, i32* %mapsizex14, align 4
  %mapsizey15 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %10 = load i32, i32* %mapsizey15, align 8
  %mul16 = mul nsw i32 %9, %10
  %conv17 = sext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 2
  %call19 = call noalias i8* @malloc(i64 %mul18) #10
  %11 = bitcast i8* %call19 to i16*
  %mmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  store i16* %11, i16** %mmapp, align 8
  %mmapp20 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 0
  %12 = load i16*, i16** %mmapp20, align 8
  %13 = bitcast i16* %12 to i8*
  %mapsizex21 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %14 = load i32, i32* %mapsizex21, align 4
  %mapsizey22 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %15 = load i32, i32* %mapsizey22, align 8
  %mul23 = mul nsw i32 %14, %15
  %conv24 = sext i32 %mul23 to i64
  %mul25 = mul i64 %conv24, 2
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %mul25, i32 2, i1 false)
  %fillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 1
  store i16 0, i16* %fillnum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %16, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %flpasablear26 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %arrayidx27 = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear26, i64 0, i64 0
  store i8 1, i8* %arrayidx27, align 8
  ret i1 true
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj17foundemptyregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 4
  %4 = load i32, i32* %square, align 8
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %5 = load i32, i32* %i, align 4
  %call5 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp4, i32 %5)
  %6 = load %class.regobj*, %class.regobj** %call5, align 8
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %6, i32 0, i32 1
  store i8 0, i8* %flexist, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* %this, i32 %x0, i32 %y0) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %call = call i8* @_Znwm(i64 56) #11
  %0 = bitcast i8* %call to %class.regobj*
  invoke void @_ZN6regobjC2EP9regmngobj(%class.regobj* %0, %class.regmngobj* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %class.regobj* %0, %class.regobj** %regionp, align 8
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %call2 = call i32 @_ZN15largesolidarrayIP6regobjE3addERKS1_(%class.largesolidarray* %rarp, %class.regobj** dereferenceable(8) %regionp)
  %1 = load %class.regobj*, %class.regobj** %regionp, align 8
  %internalnum = getelementptr inbounds %class.regobj, %class.regobj* %1, i32 0, i32 0
  store i32 %call2, i32* %internalnum, align 8
  %2 = load %class.regobj*, %class.regobj** %regionp, align 8
  %3 = load i32, i32* %x0.addr, align 4
  %4 = load i32, i32* %y0.addr, align 4
  call void @_ZN6regobj6createEii(%class.regobj* %2, i32 %3, i32 %4)
  %5 = load %class.regobj*, %class.regobj** %regionp, align 8
  ret %class.regobj* %5

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #12
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val3 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val3
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN6regobjC2EP9regmngobj(%class.regobj* %this, %class.regmngobj* %regmngpin) unnamed_addr #0 comdat align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  %regmngpin.addr = alloca %class.regmngobj*, align 8
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  store %class.regmngobj* %regmngpin, %class.regmngobj** %regmngpin.addr, align 8
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 5
  call void @_ZN6pointtC2Ev(%struct.pointt* %centerp)
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 9
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngpin.addr, align 8
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  store %class.regmngobj* %0, %class.regmngobj** %regmngp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr i32 @_ZN15largesolidarrayIP6regobjE3addERKS1_(%class.largesolidarray* %this, %class.regobj** dereferenceable(8) %e) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  %e.addr = alloca %class.regobj**, align 8
  %elemcell = alloca i32, align 4
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  store %class.regobj** %e, %class.regobj*** %e.addr, align 8
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN15largesolidarrayIP6regobjE8doublingEv(%class.largesolidarray* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %class.regobj**, %class.regobj*** %e.addr, align 8
  %3 = load %class.regobj*, %class.regobj** %2, align 8
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %4 = load %class.regobj**, %class.regobj*** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %5 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %4, i64 %idxprom
  store %class.regobj* %3, %class.regobj** %arrayidx, align 8
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  %call = call i32 @_ZN9flexstackIiE3getEv(%class.flexstack* %freecellholder)
  store i32 %call, i32* %elemcell, align 4
  %elemqu3 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %6 = load i32, i32* %elemqu3, align 8
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  %ep4 = getelementptr inbounds %class.flexstack, %class.flexstack* %dccellar, i32 0, i32 0
  %7 = load i32*, i32** %ep4, align 8
  %8 = load i32, i32* %elemcell, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %7, i64 %idxprom5
  store i32 %6, i32* %arrayidx6, align 4
  %9 = load i32, i32* %elemcell, align 4
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  %ep7 = getelementptr inbounds %class.flexstack, %class.flexstack* %rccellar, i32 0, i32 0
  %10 = load i32*, i32** %ep7, align 8
  %elemqu8 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %11 = load i32, i32* %elemqu8, align 8
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %10, i64 %idxprom9
  store i32 %9, i32* %arrayidx10, align 4
  %elemqu11 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %12 = load i32, i32* %elemqu11, align 8
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %elemqu11, align 8
  %13 = load i32, i32* %elemcell, align 4
  ret i32 %13
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN15largesolidarrayIP6regobjE8doublingEv(%class.largesolidarray* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  %newep = alloca %class.regobj**, align 8
  %newmaxelemqu = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newmaxelemqu, align 4
  %1 = load i32, i32* %newmaxelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to %class.regobj**
  store %class.regobj** %2, %class.regobj*** %newep, align 8
  %3 = load %class.regobj**, %class.regobj*** %newep, align 8
  %4 = bitcast %class.regobj** %3 to i8*
  %ep = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %5 = load %class.regobj**, %class.regobj*** %ep, align 8
  %6 = bitcast %class.regobj** %5 to i8*
  %maxelemqu2 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %7 = load i32, i32* %maxelemqu2, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = mul i64 %conv3, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 %mul4, i32 8, i1 false)
  %ep5 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %8 = load %class.regobj**, %class.regobj*** %ep5, align 8
  %9 = bitcast %class.regobj** %8 to i8*
  call void @free(i8* %9) #10
  %10 = load %class.regobj**, %class.regobj*** %newep, align 8
  %ep6 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  store %class.regobj** %10, %class.regobj*** %ep6, align 8
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  call void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* %dccellar, i1 zeroext true)
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  call void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* %rccellar, i1 zeroext true)
  %maxelemqu7 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  %11 = load i32, i32* %maxelemqu7, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %newmaxelemqu, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  %14 = load i32, i32* %i, align 4
  call void @_ZN9flexstackIiE3putEi(%class.flexstack* %freecellholder, i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %newmaxelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 5
  store i32 %16, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_ZN9flexstackIiE3getEv(%class.flexstack* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %elemqu, align 8
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %1 = load i32*, i32** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 1
  %2 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayIiE8doublingEb(%class.flexstack* %this, i1 zeroext %flcopy) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexstack*, align 8
  %flcopy.addr = alloca i8, align 1
  %newep = alloca i32*, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexstack* %this, %class.flexstack** %this.addr, align 8
  %frombool = zext i1 %flcopy to i8
  store i8 %frombool, i8* %flcopy.addr, align 1
  %this1 = load %class.flexstack*, %class.flexstack** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv2, i32 16)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %newep, align 8
  %3 = load i8, i8* %flcopy.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %newep, align 8
  %5 = bitcast i32* %4 to i8*
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %6 = load i32*, i32** %ep, align 8
  %7 = bitcast i32* %6 to i8*
  %maxelemqu3 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  %8 = load i32, i32* %maxelemqu3, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul5, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ep6 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  %9 = load i32*, i32** %ep6, align 8
  %10 = bitcast i32* %9 to i8*
  call void @_Z13_aligned_freePv(i8* %10)
  %11 = load i32*, i32** %newep, align 8
  %ep7 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 0
  store i32* %11, i32** %ep7, align 8
  %12 = load i32, i32* %newelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.flexstack, %class.flexstack* %this1, i32 0, i32 2
  store i32 %12, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6pointtC2Ev(%struct.pointt* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %struct.pointt*, align 8
  store %struct.pointt* %this, %struct.pointt** %this.addr, align 8
  %this1 = load %struct.pointt*, %struct.pointt** %this.addr, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %deletedregions = alloca %class.flexarray.2, align 8
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  call void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %deletedregions, i32 16)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 1
  %4 = load i8, i8* %flexist, align 4
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %5 = load i32, i32* %i, align 4
  %call5 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp4, i32 %5)
  call void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %deletedregions, %class.regobj** dereferenceable(8) %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, i32* %i, align 4
  %elemqu7 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %deletedregions, i32 0, i32 1
  %8 = load i32, i32* %elemqu7, align 8
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond6
  %rarp10 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %9 = load i32, i32* %i, align 4
  %call11 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %deletedregions, i32 %9)
  %10 = load %class.regobj*, %class.regobj** %call11, align 8
  %internalnum = getelementptr inbounds %class.regobj, %class.regobj* %10, i32 0, i32 0
  %11 = load i32, i32* %internalnum, align 8
  call void @_ZN15largesolidarrayIP6regobjE6removeEi(%class.largesolidarray* %rarp10, i32 %11)
  %12 = load i32, i32* %i, align 4
  %call12 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %deletedregions, i32 %12)
  %13 = load %class.regobj*, %class.regobj** %call12, align 8
  call void @_ZN6regobj7destroyEv(%class.regobj* %13)
  %14 = load i32, i32* %i, align 4
  %call13 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %deletedregions, i32 %14)
  %15 = load %class.regobj*, %class.regobj** %call13, align 8
  %isnull = icmp eq %class.regobj* %15, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.body9
  %16 = bitcast %class.regobj* %15 to i8*
  call void @_ZdlPv(i8* %16) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.body9
  br label %for.inc14

for.inc14:                                        ; preds = %delete.end
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond6

for.end16:                                        ; preds = %for.cond6
  call void @_ZN9flexarrayIP6regobjE7destroyEv(%class.flexarray.2* %deletedregions)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %this, i32 %maxelemquin) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv3, i32 16)
  %2 = bitcast i8* %call to %class.regobj**
  %ep = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  store %class.regobj** %2, %class.regobj*** %ep, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %this, %class.regobj** dereferenceable(8) %e) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  %e.addr = alloca %class.regobj**, align 8
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  store %class.regobj** %e, %class.regobj*** %e.addr, align 8
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray.2* %this1, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %class.regobj**, %class.regobj*** %e.addr, align 8
  %3 = load %class.regobj*, %class.regobj** %2, align 8
  %ep = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  %4 = load %class.regobj**, %class.regobj*** %ep, align 8
  %elemqu2 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 1
  %5 = load i32, i32* %elemqu2, align 8
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %4, i64 %idxprom
  store %class.regobj* %3, %class.regobj** %arrayidx, align 8
  %elemqu3 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 1
  %6 = load i32, i32* %elemqu3, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %elemqu3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  %index.addr = alloca i32, align 4
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  %0 = load %class.regobj**, %class.regobj*** %ep, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %0, i64 %idxprom
  ret %class.regobj** %arrayidx
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN15largesolidarrayIP6regobjE6removeEi(%class.largesolidarray* %this, i32 %ecellnum) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.largesolidarray*, align 8
  %ecellnum.addr = alloca i32, align 4
  %removecell = alloca i32, align 4
  store %class.largesolidarray* %this, %class.largesolidarray** %this.addr, align 8
  store i32 %ecellnum, i32* %ecellnum.addr, align 4
  %this1 = load %class.largesolidarray*, %class.largesolidarray** %this.addr, align 8
  %dccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  %ep = getelementptr inbounds %class.flexstack, %class.flexstack* %dccellar, i32 0, i32 0
  %0 = load i32*, i32** %ep, align 8
  %1 = load i32, i32* %ecellnum.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %removecell, align 4
  %3 = load i32, i32* %removecell, align 4
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %4 = load i32, i32* %elemqu, align 8
  %sub = sub nsw i32 %4, 1
  %cmp = icmp ne i32 %3, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ep2 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %5 = load %class.regobj**, %class.regobj*** %ep2, align 8
  %elemqu3 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %6 = load i32, i32* %elemqu3, align 8
  %sub4 = sub nsw i32 %6, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds %class.regobj*, %class.regobj** %5, i64 %idxprom5
  %7 = load %class.regobj*, %class.regobj** %arrayidx6, align 8
  %ep7 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 0
  %8 = load %class.regobj**, %class.regobj*** %ep7, align 8
  %9 = load i32, i32* %removecell, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds %class.regobj*, %class.regobj** %8, i64 %idxprom8
  store %class.regobj* %7, %class.regobj** %arrayidx9, align 8
  %10 = load i32, i32* %removecell, align 4
  %dccellar10 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 2
  %ep11 = getelementptr inbounds %class.flexstack, %class.flexstack* %dccellar10, i32 0, i32 0
  %11 = load i32*, i32** %ep11, align 8
  %rccellar = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  %ep12 = getelementptr inbounds %class.flexstack, %class.flexstack* %rccellar, i32 0, i32 0
  %12 = load i32*, i32** %ep12, align 8
  %elemqu13 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %13 = load i32, i32* %elemqu13, align 8
  %sub14 = sub nsw i32 %13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %12, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %11, i64 %idxprom17
  store i32 %10, i32* %arrayidx18, align 4
  %rccellar19 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  %ep20 = getelementptr inbounds %class.flexstack, %class.flexstack* %rccellar19, i32 0, i32 0
  %15 = load i32*, i32** %ep20, align 8
  %elemqu21 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %16 = load i32, i32* %elemqu21, align 8
  %sub22 = sub nsw i32 %16, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %15, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %rccellar25 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 3
  %ep26 = getelementptr inbounds %class.flexstack, %class.flexstack* %rccellar25, i32 0, i32 0
  %18 = load i32*, i32** %ep26, align 8
  %19 = load i32, i32* %removecell, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %18, i64 %idxprom27
  store i32 %17, i32* %arrayidx28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %freecellholder = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 1
  %20 = load i32, i32* %ecellnum.addr, align 4
  call void @_ZN9flexstackIiE3putEi(%class.flexstack* %freecellholder, i32 %20)
  %elemqu29 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %this1, i32 0, i32 4
  %21 = load i32, i32* %elemqu29, align 8
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %elemqu29, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayIP6regobjE7destroyEv(%class.flexarray.2* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  %0 = load %class.regobj**, %class.regobj*** %ep, align 8
  %1 = bitcast %class.regobj** %0 to i8*
  call void @_Z13_aligned_freePv(i8* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayIP6regobjE8doublingEb(%class.flexarray.2* %this, i1 zeroext %flcopy) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  %flcopy.addr = alloca i8, align 1
  %newep = alloca %class.regobj**, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  %frombool = zext i1 %flcopy to i8
  store i8 %frombool, i8* %flcopy.addr, align 1
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv2, i32 16)
  %2 = bitcast i8* %call to %class.regobj**
  store %class.regobj** %2, %class.regobj*** %newep, align 8
  %3 = load i8, i8* %flcopy.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %class.regobj**, %class.regobj*** %newep, align 8
  %5 = bitcast %class.regobj** %4 to i8*
  %ep = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  %6 = load %class.regobj**, %class.regobj*** %ep, align 8
  %7 = bitcast %class.regobj** %6 to i8*
  %maxelemqu3 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  %8 = load i32, i32* %maxelemqu3, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul5, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ep6 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  %9 = load %class.regobj**, %class.regobj*** %ep6, align 8
  %10 = bitcast %class.regobj** %9 to i8*
  call void @_Z13_aligned_freePv(i8* %10)
  %11 = load %class.regobj**, %class.regobj*** %newep, align 8
  %ep7 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 0
  store %class.regobj** %11, %class.regobj*** %ep7, align 8
  %12 = load i32, i32* %newelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 2
  store i32 %12, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj13defineregionsEv(%class.regmngobj* %this) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %rboundarp = alloca %class.flexarray.3, align 8
  %regionx = alloca i32, align 4
  %regiony = alloca i32, align 4
  %fldone = alloca i8, align 1
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %reglx = alloca i32, align 4
  %regly = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  %regboundp = alloca %class.regboundobj*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  call void @_ZN9flexarrayI11regboundobjE6createEi(%class.flexarray.3* %rboundarp, i32 16)
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %0 = load i32, i32* %mapmaxx, align 4
  %conv = sitofp i32 %0 to float
  %div = fdiv float %conv, 6.200000e+02
  %mul = fmul float %div, 3.400000e+01
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %1 = load float, float* %radiuscoef, align 8
  %div2 = fdiv float %mul, %1
  %call = call i32 @_Z7myroundf(float %div2)
  store i32 %call, i32* %regionx, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %2 = load i32, i32* %mapmaxy, align 8
  %conv3 = sitofp i32 %2 to float
  %div4 = fdiv float %conv3, 3.090000e+02
  %mul5 = fmul float %div4, 2.000000e+01
  %radiuscoef6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %3 = load float, float* %radiuscoef6, align 8
  %div7 = fdiv float %mul5, %3
  %call8 = call i32 @_Z7myroundf(float %div7)
  store i32 %call8, i32* %regiony, align 4
  %mapmaxx9 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %4 = load i32, i32* %mapmaxx9, align 4
  %add = add nsw i32 %4, 1
  %conv10 = sitofp i32 %add to float
  %5 = load i32, i32* %regionx, align 4
  %conv11 = sitofp i32 %5 to float
  %div12 = fdiv float %conv10, %conv11
  %call13 = call i32 @_Z7myroundf(float %div12)
  store i32 %call13, i32* %reglx, align 4
  %mapmaxy14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %6 = load i32, i32* %mapmaxy14, align 8
  %add15 = add nsw i32 %6, 1
  %conv16 = sitofp i32 %add15 to float
  %7 = load i32, i32* %regiony, align 4
  %conv17 = sitofp i32 %7 to float
  %div18 = fdiv float %conv16, %conv17
  %call19 = call float @_ZSt4sqrtf(float 3.000000e+00)
  %mul20 = fmul float %div18, %call19
  %div21 = fdiv float %mul20, 2.000000e+00
  %call22 = call i32 @_Z7myroundf(float %div21)
  store i32 %call22, i32* %regly, align 4
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %i2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %8 = load i32, i32* %i2, align 4
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %reglx, align 4
  %10 = load i32, i32* %i1, align 4
  %11 = load i32, i32* %reglx, align 4
  %mul23 = mul nsw i32 %10, %11
  %add24 = add nsw i32 %9, %mul23
  store i32 %add24, i32* %xx, align 4
  br label %if.end

if.else:                                          ; preds = %do.body
  %12 = load i32, i32* %reglx, align 4
  %div25 = sdiv i32 %12, 2
  %13 = load i32, i32* %i1, align 4
  %14 = load i32, i32* %reglx, align 4
  %mul26 = mul nsw i32 %13, %14
  %add27 = add nsw i32 %div25, %mul26
  store i32 %add27, i32* %xx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %regly, align 4
  %div28 = sdiv i32 %15, 2
  %16 = load i32, i32* %i2, align 4
  %17 = load i32, i32* %regly, align 4
  %mul29 = mul nsw i32 %16, %17
  %add30 = add nsw i32 %div28, %mul29
  store i32 %add30, i32* %yy, align 4
  %18 = load i32, i32* %xx, align 4
  %19 = load i32, i32* %yy, align 4
  %call31 = call zeroext i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* %this1, i32 %18, i32 %19, i32* dereferenceable(4) %x, i32* dereferenceable(4) %y)
  %conv32 = zext i1 %call31 to i32
  %cmp = icmp eq i32 %conv32, 0
  br i1 %cmp, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.end
  br label %next

if.else34:                                        ; preds = %if.end
  %20 = load i32, i32* %x, align 4
  %21 = load i32, i32* %y, align 4
  %call35 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %20, i32 %21)
  %22 = load %class.regobj*, %class.regobj** %call35, align 8
  %tobool36 = icmp ne %class.regobj* %22, null
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.else34
  br label %next

if.end38:                                         ; preds = %if.else34
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  %call40 = call i8* @_Znwm(i64 56) #11
  %23 = bitcast i8* %call40 to %class.regobj*
  invoke void @_ZN6regobjC2EP9regmngobj(%class.regobj* %23, %class.regmngobj* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end39
  store %class.regobj* %23, %class.regobj** %regionp, align 8
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %call41 = call i32 @_ZN15largesolidarrayIP6regobjE3addERKS1_(%class.largesolidarray* %rarp, %class.regobj** dereferenceable(8) %regionp)
  %24 = load %class.regobj*, %class.regobj** %regionp, align 8
  %internalnum = getelementptr inbounds %class.regobj, %class.regobj* %24, i32 0, i32 0
  store i32 %call41, i32* %internalnum, align 8
  %25 = load %class.regobj*, %class.regobj** %regionp, align 8
  call void @_ZN6regobj6createEv(%class.regobj* %25)
  %26 = load %class.regobj*, %class.regobj** %regionp, align 8
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %26, i32 0, i32 1
  store i8 1, i8* %flexist, align 4
  %27 = load i32, i32* %x, align 4
  %28 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %28, i32 0, i32 5
  %x42 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  store i32 %27, i32* %x42, align 4
  %29 = load i32, i32* %y, align 4
  %30 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp43 = getelementptr inbounds %class.regobj, %class.regobj* %30, i32 0, i32 5
  %y44 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp43, i32 0, i32 1
  store i32 %29, i32* %y44, align 4
  %call45 = call %class.regboundobj* @_ZN9flexarrayI11regboundobjE3addEv(%class.flexarray.3* %rboundarp)
  store %class.regboundobj* %call45, %class.regboundobj** %regboundp, align 8
  %31 = load %class.regboundobj*, %class.regboundobj** %regboundp, align 8
  %flexist46 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %31, i32 0, i32 17
  store i8 1, i8* %flexist46, align 8
  %32 = load %class.regboundobj*, %class.regboundobj** %regboundp, align 8
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %y, align 4
  %35 = load %class.regobj*, %class.regobj** %regionp, align 8
  call void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* %32, i32 %33, i32 %34, %class.regobj* %35, %class.regmngobj* %this1)
  br label %next

next:                                             ; preds = %invoke.cont, %if.then37, %if.then33
  %36 = load i32, i32* %i1, align 4
  %add47 = add nsw i32 %36, 1
  store i32 %add47, i32* %i1, align 4
  %37 = load i32, i32* %i2, align 4
  %and48 = and i32 %37, 1
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.else55

if.then50:                                        ; preds = %next
  %38 = load i32, i32* %i1, align 4
  %39 = load i32, i32* %regionx, align 4
  %sub = sub nsw i32 %39, 1
  %cmp51 = icmp eq i32 %38, %sub
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  store i32 0, i32* %i1, align 4
  %40 = load i32, i32* %i2, align 4
  %add53 = add nsw i32 %40, 1
  store i32 %add53, i32* %i2, align 4
  br label %if.end54

lpad:                                             ; preds = %if.end39
  %41 = landingpad { i8*, i32 }
          cleanup
  %42 = extractvalue { i8*, i32 } %41, 0
  store i8* %42, i8** %exn.slot, align 8
  %43 = extractvalue { i8*, i32 } %41, 1
  store i32 %43, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call40) #12
  br label %eh.resume

if.end54:                                         ; preds = %if.then52, %if.then50
  br label %if.end60

if.else55:                                        ; preds = %next
  %44 = load i32, i32* %i1, align 4
  %45 = load i32, i32* %regionx, align 4
  %cmp56 = icmp eq i32 %44, %45
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.else55
  store i32 0, i32* %i1, align 4
  %46 = load i32, i32* %i2, align 4
  %add58 = add nsw i32 %46, 1
  store i32 %add58, i32* %i2, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.else55
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end54
  br label %do.cond

do.cond:                                          ; preds = %if.end60
  %47 = load i32, i32* %i2, align 4
  %48 = load i32, i32* %regiony, align 4
  %conv61 = sitofp i32 %48 to float
  %mul62 = fmul float %conv61, 2.000000e+00
  %call63 = call float @_ZSt4sqrtf(float 3.000000e+00)
  %div64 = fdiv float %mul62, %call63
  %call65 = call i32 @_Z7myroundf(float %div64)
  %add66 = add nsw i32 %call65, 3
  %cmp67 = icmp slt i32 %47, %add66
  br i1 %cmp67, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body68

do.body68:                                        ; preds = %do.cond76, %do.end
  store i8 1, i8* %fldone, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body68
  %49 = load i32, i32* %i, align 4
  %elemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %rboundarp, i32 0, i32 1
  %50 = load i32, i32* %elemqu, align 8
  %cmp69 = icmp slt i32 %49, %50
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %call70 = call dereferenceable(112) %class.regboundobj* @_ZN9flexarrayI11regboundobjEixEi(%class.flexarray.3* %rboundarp, i32 %51)
  %call71 = call zeroext i1 @_ZN11regboundobj4stepEv(%class.regboundobj* %call70)
  %conv72 = zext i1 %call71 to i32
  %cmp73 = icmp eq i32 %conv72, 1
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %for.body
  store i8 0, i8* %fldone, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end75
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond76

do.cond76:                                        ; preds = %for.end
  %53 = load i8, i8* %fldone, align 1
  %tobool77 = trunc i8 %53 to i1
  %conv78 = zext i1 %tobool77 to i32
  %cmp79 = icmp eq i32 %conv78, 0
  br i1 %cmp79, label %do.body68, label %do.end80

do.end80:                                         ; preds = %do.cond76
  store i32 0, i32* %i, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc86, %do.end80
  %54 = load i32, i32* %i, align 4
  %elemqu82 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %rboundarp, i32 0, i32 1
  %55 = load i32, i32* %elemqu82, align 8
  %cmp83 = icmp slt i32 %54, %55
  br i1 %cmp83, label %for.body84, label %for.end88

for.body84:                                       ; preds = %for.cond81
  %56 = load i32, i32* %i, align 4
  %call85 = call dereferenceable(112) %class.regboundobj* @_ZN9flexarrayI11regboundobjEixEi(%class.flexarray.3* %rboundarp, i32 %56)
  call void @_ZN11regboundobj7destroyEv(%class.regboundobj* %call85)
  br label %for.inc86

for.inc86:                                        ; preds = %for.body84
  %57 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %57, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond81

for.end88:                                        ; preds = %for.cond81
  call void @_ZN9flexarrayI11regboundobjE7destroyEv(%class.flexarray.3* %rboundarp)
  ret void

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val89 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val89
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI11regboundobjE6createEi(%class.flexarray.3* %this, i32 %maxelemquin) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.3*, align 8
  %maxelemquin.addr = alloca i32, align 4
  store %class.flexarray.3* %this, %class.flexarray.3** %this.addr, align 8
  store i32 %maxelemquin, i32* %maxelemquin.addr, align 4
  %this1 = load %class.flexarray.3*, %class.flexarray.3** %this.addr, align 8
  %0 = load i32, i32* %maxelemquin.addr, align 4
  %maxelemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  store i32 %0, i32* %maxelemqu, align 4
  %elemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  %maxelemqu2 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu2, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 112
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv3, i32 16)
  %2 = bitcast i8* %call to %class.regboundobj*
  %ep = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  store %class.regboundobj* %2, %class.regboundobj** %ep, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZSt4sqrtf(float %__x) #2 comdat {
entry:
  %__x.addr = alloca float, align 4
  store float %__x, float* %__x.addr, align 4
  %0 = load float, float* %__x.addr, align 4
  %call = call float @sqrtf(float %0) #3
  ret float %call
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  %0 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %3 = load i32, i32* %mapsizex, align 4
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %0, i64 %idxprom
  ret %class.regobj** %arrayidx
}

; Function Attrs: noinline uwtable
define linkonce_odr %class.regboundobj* @_ZN9flexarrayI11regboundobjE3addEv(%class.flexarray.3* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.3*, align 8
  store %class.flexarray.3* %this, %class.flexarray.3** %this.addr, align 8
  %this1 = load %class.flexarray.3*, %class.flexarray.3** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 1
  %0 = load i32, i32* %elemqu, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  %1 = load i32, i32* %maxelemqu, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZN9flexarrayI11regboundobjE8doublingEb(%class.flexarray.3* %this1, i1 zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %elemqu2 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 1
  %2 = load i32, i32* %elemqu2, align 8
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %elemqu2, align 8
  %ep = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  %3 = load %class.regboundobj*, %class.regboundobj** %ep, align 8
  %elemqu3 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 1
  %4 = load i32, i32* %elemqu3, align 8
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds %class.regboundobj, %class.regboundobj* %3, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds %class.regboundobj, %class.regboundobj* %add.ptr, i64 -1
  ret %class.regboundobj* %add.ptr4
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dereferenceable(112) %class.regboundobj* @_ZN9flexarrayI11regboundobjEixEi(%class.flexarray.3* %this, i32 %index) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.3*, align 8
  %index.addr = alloca i32, align 4
  store %class.flexarray.3* %this, %class.flexarray.3** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.flexarray.3*, %class.flexarray.3** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  %0 = load %class.regboundobj*, %class.regboundobj** %ep, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %class.regboundobj, %class.regboundobj* %0, i64 %idxprom
  ret %class.regboundobj* %arrayidx
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI11regboundobjE7destroyEv(%class.flexarray.3* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.3*, align 8
  store %class.flexarray.3* %this, %class.flexarray.3** %this.addr, align 8
  %this1 = load %class.flexarray.3*, %class.flexarray.3** %this.addr, align 8
  %ep = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  %0 = load %class.regboundobj*, %class.regboundobj** %ep, align 8
  %1 = bitcast %class.regboundobj* %0 to i8*
  call void @_Z13_aligned_freePv(i8* %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayI11regboundobjE8doublingEb(%class.flexarray.3* %this, i1 zeroext %flcopy) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.3*, align 8
  %flcopy.addr = alloca i8, align 1
  %newep = alloca %class.regboundobj*, align 8
  %newelemqu = alloca i32, align 4
  store %class.flexarray.3* %this, %class.flexarray.3** %this.addr, align 8
  %frombool = zext i1 %flcopy to i8
  store i8 %frombool, i8* %flcopy.addr, align 1
  %this1 = load %class.flexarray.3*, %class.flexarray.3** %this.addr, align 8
  %maxelemqu = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  %0 = load i32, i32* %maxelemqu, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %newelemqu, align 4
  %1 = load i32, i32* %newelemqu, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 112
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @_Z15_aligned_mallocii(i32 %conv2, i32 16)
  %2 = bitcast i8* %call to %class.regboundobj*
  store %class.regboundobj* %2, %class.regboundobj** %newep, align 8
  %3 = load i8, i8* %flcopy.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %class.regboundobj*, %class.regboundobj** %newep, align 8
  %5 = bitcast %class.regboundobj* %4 to i8*
  %ep = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  %6 = load %class.regboundobj*, %class.regboundobj** %ep, align 8
  %7 = bitcast %class.regboundobj* %6 to i8*
  %maxelemqu3 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  %8 = load i32, i32* %maxelemqu3, align 4
  %conv4 = sext i32 %8 to i64
  %mul5 = mul i64 %conv4, 112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul5, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %ep6 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  %9 = load %class.regboundobj*, %class.regboundobj** %ep6, align 8
  %10 = bitcast %class.regboundobj* %9 to i8*
  call void @_Z13_aligned_freePv(i8* %10)
  %11 = load %class.regboundobj*, %class.regboundobj** %newep, align 8
  %ep7 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 0
  store %class.regboundobj* %11, %class.regboundobj** %ep7, align 8
  %12 = load i32, i32* %newelemqu, align 4
  %maxelemqu8 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %this1, i32 0, i32 2
  store i32 %12, i32* %maxelemqu8, align 4
  ret void
}

; Function Attrs: nounwind readnone
declare float @sqrtf(float) #9

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %1 = load i32, i32* %mapmaxy, align 8
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %3 = load i32, i32* %mapmaxx, align 4
  %cmp3 = icmp sle i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %4, i32 %5)
  %6 = load %class.regobj*, %class.regobj** %call, align 8
  %cmp5 = icmp eq %class.regobj* %6, null
  br i1 %cmp5, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body4
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %call6 = call zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %this1, i32 %7, i32 %8)
  %idxprom = zext i8 %call6 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %call8 = call %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* %this1, i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %12 = load i32, i32* %x, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %13 = load i32, i32* %y, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %y, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj10addregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %2 = load i32, i32* %mapmaxy, align 8
  %cmp3 = icmp sle i32 %1, %2
  br i1 %cmp3, label %for.body4, label %for.end19

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %x, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %3 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %4 = load i32, i32* %mapmaxx, align 4
  %cmp6 = icmp sle i32 %3, %4
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %5 = load i32, i32* %x, align 4
  %6 = load i32, i32* %y, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %5, i32 %6)
  %7 = load %class.regobj*, %class.regobj** %call, align 8
  %cmp8 = icmp eq %class.regobj* %7, null
  br i1 %cmp8, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body7
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %y, align 4
  %call9 = call zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %this1, i32 %8, i32 %9)
  %idxprom = zext i8 %call9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.then
  %call11 = call i32 @_Z7random1i(i32 32)
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then10
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %call14 = call %class.regobj* @_ZN9regmngobj9newregionEii(%class.regmngobj* %this1, i32 %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then10
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %13 = load i32, i32* %x, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %14 = load i32, i32* %y, align 4
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, i32* %y, align 4
  br label %for.cond2

for.end19:                                        ; preds = %for.cond2
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this1)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  %rboundarp = alloca %class.flexarray.3, align 8
  %fldone = alloca i8, align 1
  %regboundp = alloca %class.regboundobj*, align 8
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  call void @_ZN9flexarrayI11regboundobjE6createEi(%class.flexarray.3* %rboundarp, i32 16)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 2
  %4 = load i8, i8* %flredefine, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call3 = call %class.regboundobj* @_ZN9flexarrayI11regboundobjE3addEv(%class.flexarray.3* %rboundarp)
  store %class.regboundobj* %call3, %class.regboundobj** %regboundp, align 8
  %5 = load %class.regboundobj*, %class.regboundobj** %regboundp, align 8
  %flexist = getelementptr inbounds %class.regboundobj, %class.regboundobj* %5, i32 0, i32 17
  store i8 1, i8* %flexist, align 8
  %6 = load %class.regboundobj*, %class.regboundobj** %regboundp, align 8
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %7 = load i32, i32* %i, align 4
  %call5 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp4, i32 %7)
  %8 = load %class.regobj*, %class.regobj** %call5, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %8, i32 0, i32 5
  %x = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  %9 = load i32, i32* %x, align 4
  %rarp6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %10 = load i32, i32* %i, align 4
  %call7 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp6, i32 %10)
  %11 = load %class.regobj*, %class.regobj** %call7, align 8
  %centerp8 = getelementptr inbounds %class.regobj, %class.regobj* %11, i32 0, i32 5
  %y = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp8, i32 0, i32 1
  %12 = load i32, i32* %y, align 4
  %rarp9 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %13 = load i32, i32* %i, align 4
  %call10 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp9, i32 %13)
  %14 = load %class.regobj*, %class.regobj** %call10, align 8
  call void @_ZN11regboundobj9firststepEiiP6regobjP9regmngobj(%class.regboundobj* %6, i32 %9, i32 %12, %class.regobj* %14, %class.regmngobj* %this1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i8 1, i8* %fldone, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %do.body
  %16 = load i32, i32* %i, align 4
  %elemqu12 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %rboundarp, i32 0, i32 1
  %17 = load i32, i32* %elemqu12, align 8
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond11
  %18 = load i32, i32* %i, align 4
  %call15 = call dereferenceable(112) %class.regboundobj* @_ZN9flexarrayI11regboundobjEixEi(%class.flexarray.3* %rboundarp, i32 %18)
  %call16 = call zeroext i1 @_ZN11regboundobj4stepEv(%class.regboundobj* %call15)
  %conv = zext i1 %call16 to i32
  %cmp17 = icmp eq i32 %conv, 1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body14
  store i8 0, i8* %fldone, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %for.body14
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %19 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %19, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond11

for.end22:                                        ; preds = %for.cond11
  br label %do.cond

do.cond:                                          ; preds = %for.end22
  %20 = load i8, i8* %fldone, align 1
  %tobool23 = trunc i8 %20 to i1
  %conv24 = zext i1 %tobool23 to i32
  %cmp25 = icmp eq i32 %conv24, 0
  br i1 %cmp25, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %do.end
  %21 = load i32, i32* %i, align 4
  %elemqu27 = getelementptr inbounds %class.flexarray.3, %class.flexarray.3* %rboundarp, i32 0, i32 1
  %22 = load i32, i32* %elemqu27, align 8
  %cmp28 = icmp slt i32 %21, %22
  br i1 %cmp28, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  %23 = load i32, i32* %i, align 4
  %call30 = call dereferenceable(112) %class.regboundobj* @_ZN9flexarrayI11regboundobjEixEi(%class.flexarray.3* %rboundarp, i32 %23)
  call void @_ZN11regboundobj7destroyEv(%class.regboundobj* %call30)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %24 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond26

for.end33:                                        ; preds = %for.cond26
  call void @_ZN9flexarrayI11regboundobjE7destroyEv(%class.flexarray.3* %rboundarp)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj14enlargeregionsEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  %critical = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %0 = load float, float* %radiuscoef, align 8
  %conv = fpext float %0 to double
  %mul = fmul double 1.070000e+02, %conv
  %radiuscoef2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %1 = load float, float* %radiuscoef2, align 8
  %conv3 = fpext float %1 to double
  %mul4 = fmul double %mul, %conv3
  %conv5 = fptosi double %mul4 to i32
  store i32 %conv5, i32* %critical, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %3 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %4 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp6, i32 %4)
  %5 = load %class.regobj*, %class.regobj** %call, align 8
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %5, i32 0, i32 2
  store i8 1, i8* %flredefine, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %for.end
  %7 = load i32, i32* %i, align 4
  %rarp8 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu9 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp8, i32 0, i32 4
  %8 = load i32, i32* %elemqu9, align 8
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body11, label %for.end22

for.body11:                                       ; preds = %for.cond7
  %rarp12 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %9 = load i32, i32* %i, align 4
  %call13 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp12, i32 %9)
  %10 = load %class.regobj*, %class.regobj** %call13, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %10, i32 0, i32 4
  %11 = load i32, i32* %square, align 8
  %12 = load i32, i32* %critical, align 4
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body11
  %rarp15 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %13 = load i32, i32* %i, align 4
  %call16 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp15, i32 %13)
  %14 = load %class.regobj*, %class.regobj** %call16, align 8
  %flredefine17 = getelementptr inbounds %class.regobj, %class.regobj* %14, i32 0, i32 2
  store i8 0, i8* %flredefine17, align 1
  %rarp18 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %15 = load i32, i32* %i, align 4
  %call19 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp18, i32 %15)
  %16 = load %class.regobj*, %class.regobj** %call19, align 8
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %16, i32 0, i32 1
  store i8 0, i8* %flexist, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond7

for.end22:                                        ; preds = %for.cond7
  call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this1)
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  %18 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %19 = bitcast %class.regobj** %18 to i8*
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %20 = load i32, i32* %mapsizex, align 4
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %21 = load i32, i32* %mapsizey, align 8
  %mul23 = mul nsw i32 %20, %21
  %conv24 = sext i32 %mul23 to i64
  %mul25 = mul i64 %conv24, 8
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul25, i32 8, i1 false)
  call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* %this1)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this, i32 %critical) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %critical.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %critical, i32* %critical.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 2
  store i8 0, i8* %flredefine, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc27, %for.end
  %5 = load i32, i32* %i, align 4
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu5 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp4, i32 0, i32 4
  %6 = load i32, i32* %elemqu5, align 8
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end29

for.body7:                                        ; preds = %for.cond3
  %rarp8 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %7 = load i32, i32* %i, align 4
  %call9 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp8, i32 %7)
  %8 = load %class.regobj*, %class.regobj** %call9, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %8, i32 0, i32 4
  %9 = load i32, i32* %square, align 8
  %10 = load i32, i32* %critical.addr, align 4
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %rarp11 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %11 = load i32, i32* %i, align 4
  %call12 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp11, i32 %11)
  %12 = load %class.regobj*, %class.regobj** %call12, align 8
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %12, i32 0, i32 1
  store i8 0, i8* %flexist, align 4
  store i32 0, i32* %i2, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %if.then
  %13 = load i32, i32* %i2, align 4
  %rarp14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %14 = load i32, i32* %i, align 4
  %call15 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp14, i32 %14)
  %15 = load %class.regobj*, %class.regobj** %call15, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %15, i32 0, i32 9
  %elemqu16 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar, i32 0, i32 1
  %16 = load i32, i32* %elemqu16, align 8
  %cmp17 = icmp slt i32 %13, %16
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond13
  %rarp19 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %17 = load i32, i32* %i, align 4
  %call20 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp19, i32 %17)
  %18 = load %class.regobj*, %class.regobj** %call20, align 8
  %nb1ar21 = getelementptr inbounds %class.regobj, %class.regobj* %18, i32 0, i32 9
  %19 = load i32, i32* %i2, align 4
  %call22 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %nb1ar21, i32 %19)
  %20 = load %class.regobj*, %class.regobj** %call22, align 8
  %flredefine23 = getelementptr inbounds %class.regobj, %class.regobj* %20, i32 0, i32 2
  store i8 1, i8* %flredefine23, align 1
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %21 = load i32, i32* %i2, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %i2, align 4
  br label %for.cond13

for.end26:                                        ; preds = %for.cond13
  br label %if.end

if.end:                                           ; preds = %for.end26, %for.body7
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond3

for.end29:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc50, %for.end29
  %23 = load i32, i32* %i, align 4
  %rarp31 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu32 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp31, i32 0, i32 4
  %24 = load i32, i32* %elemqu32, align 8
  %cmp33 = icmp slt i32 %23, %24
  br i1 %cmp33, label %for.body34, label %for.end52

for.body34:                                       ; preds = %for.cond30
  %rarp35 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %25 = load i32, i32* %i, align 4
  %call36 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp35, i32 %25)
  %26 = load %class.regobj*, %class.regobj** %call36, align 8
  %flredefine37 = getelementptr inbounds %class.regobj, %class.regobj* %26, i32 0, i32 2
  %27 = load i8, i8* %flredefine37, align 1
  %tobool = trunc i8 %27 to i1
  br i1 %tobool, label %if.then38, label %if.end49

if.then38:                                        ; preds = %for.body34
  %rarp39 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %28 = load i32, i32* %i, align 4
  %call40 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp39, i32 %28)
  %29 = load %class.regobj*, %class.regobj** %call40, align 8
  %flexist41 = getelementptr inbounds %class.regobj, %class.regobj* %29, i32 0, i32 1
  %30 = load i8, i8* %flexist41, align 4
  %tobool42 = trunc i8 %30 to i1
  %conv = zext i1 %tobool42 to i32
  %cmp43 = icmp eq i32 %conv, 0
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.then38
  %rarp45 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %31 = load i32, i32* %i, align 4
  %call46 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp45, i32 %31)
  %32 = load %class.regobj*, %class.regobj** %call46, align 8
  %flredefine47 = getelementptr inbounds %class.regobj, %class.regobj* %32, i32 0, i32 2
  store i8 0, i8* %flredefine47, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then38
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %for.body34
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %33 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond30

for.end52:                                        ; preds = %for.cond30
  store i32 0, i32* %y, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc75, %for.end52
  %34 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %35 = load i32, i32* %mapmaxy, align 8
  %cmp54 = icmp sle i32 %34, %35
  br i1 %cmp54, label %for.body55, label %for.end77

for.body55:                                       ; preds = %for.cond53
  store i32 0, i32* %x, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc72, %for.body55
  %36 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %37 = load i32, i32* %mapmaxx, align 4
  %cmp57 = icmp sle i32 %36, %37
  br i1 %cmp57, label %for.body58, label %for.end74

for.body58:                                       ; preds = %for.cond56
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %y, align 4
  %call59 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %38, i32 %39)
  %40 = load %class.regobj*, %class.regobj** %call59, align 8
  store %class.regobj* %40, %class.regobj** %regionp, align 8
  %41 = load %class.regobj*, %class.regobj** %regionp, align 8
  %tobool60 = icmp ne %class.regobj* %41, null
  br i1 %tobool60, label %if.then61, label %if.end71

if.then61:                                        ; preds = %for.body58
  %42 = load %class.regobj*, %class.regobj** %regionp, align 8
  %flredefine62 = getelementptr inbounds %class.regobj, %class.regobj* %42, i32 0, i32 2
  %43 = load i8, i8* %flredefine62, align 1
  %tobool63 = trunc i8 %43 to i1
  br i1 %tobool63, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then61
  %44 = load %class.regobj*, %class.regobj** %regionp, align 8
  %flexist64 = getelementptr inbounds %class.regobj, %class.regobj* %44, i32 0, i32 1
  %45 = load i8, i8* %flexist64, align 4
  %tobool65 = trunc i8 %45 to i1
  %conv66 = zext i1 %tobool65 to i32
  %cmp67 = icmp eq i32 %conv66, 0
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %lor.lhs.false, %if.then61
  %46 = load i32, i32* %x, align 4
  %47 = load i32, i32* %y, align 4
  %call69 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %46, i32 %47)
  store %class.regobj* null, %class.regobj** %call69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %lor.lhs.false
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %for.body58
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %48 = load i32, i32* %x, align 4
  %inc73 = add nsw i32 %48, 1
  store i32 %inc73, i32* %x, align 4
  br label %for.cond56

for.end74:                                        ; preds = %for.cond56
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %49 = load i32, i32* %y, align 4
  %inc76 = add nsw i32 %49, 1
  store i32 %inc76, i32* %y, align 4
  br label %for.cond53

for.end77:                                        ; preds = %for.cond53
  call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* %this1)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj13createregionsEi(%class.regmngobj* %this, i32 %regionl) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %regionl.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  store i32 %regionl, i32* %regionl.addr, align 4
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %regionmapp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  %0 = load %class.regobj**, %class.regobj*** %regionmapp, align 8
  %1 = bitcast %class.regobj** %0 to i8*
  %mapsizex = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %2 = load i32, i32* %mapsizex, align 4
  %mapsizey = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %3 = load i32, i32* %mapsizey, align 8
  %mul = mul nsw i32 %2, %3
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul2, i32 8, i1 false)
  %4 = load i32, i32* %regionl.addr, align 4
  %cmp = icmp slt i32 %4, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %regionl.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %regionl.addr, align 4
  %mapsizex3 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %6 = load i32, i32* %mapsizex3, align 4
  %div = sdiv i32 %6, 5
  %cmp4 = icmp sgt i32 %5, %div
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %mapsizex6 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %7 = load i32, i32* %mapsizex6, align 4
  %div7 = sdiv i32 %7, 5
  store i32 %div7, i32* %regionl.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %8 = load i32, i32* %regionl.addr, align 4
  %conv9 = sitofp i32 %8 to float
  %div10 = fdiv float %conv9, 2.000000e+01
  %radiuscoef = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  store float %div10, float* %radiuscoef, align 8
  %radiuscoef11 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %9 = load float, float* %radiuscoef11, align 8
  %mul12 = fmul float 1.000000e+01, %9
  %conv13 = fptosi float %mul12 to i32
  %regionradius = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  store i32 %conv13, i32* %regionradius, align 8
  %regionradius14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %10 = load i32, i32* %regionradius14, align 8
  %regionradius15 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %11 = load i32, i32* %regionradius15, align 8
  %mul16 = mul nsw i32 %10, %11
  %regionradius2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 10
  store i32 %mul16, i32* %regionradius2, align 4
  call void @_ZN9regmngobj13defineregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj14enlargeregionsEv(%class.regmngobj* %this1)
  %radiuscoef17 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %12 = load float, float* %radiuscoef17, align 8
  %mul18 = fmul float 1.900000e+01, %12
  %conv19 = fptosi float %mul18 to i32
  %regionradius20 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  store i32 %conv19, i32* %regionradius20, align 8
  %regionradius21 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %13 = load i32, i32* %regionradius21, align 8
  %regionradius22 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %14 = load i32, i32* %regionradius22, align 8
  %mul23 = mul nsw i32 %13, %14
  %regionradius224 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 10
  store i32 %mul23, i32* %regionradius224, align 4
  call void @_ZN9regmngobj10addregionsEv(%class.regmngobj* %this1)
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %15 = load i32, i32* %mapmaxx, align 4
  %mul25 = mul nsw i32 5, %15
  %regionradius26 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  store i32 %mul25, i32* %regionradius26, align 8
  %regionradius27 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %16 = load i32, i32* %regionradius27, align 8
  %regionradius28 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 9
  %17 = load i32, i32* %regionradius28, align 8
  %mul29 = mul nsw i32 %16, %17
  %regionradius230 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 10
  store i32 %mul29, i32* %regionradius230, align 4
  call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this1)
  %radiuscoef31 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %18 = load float, float* %radiuscoef31, align 8
  %mul32 = fmul float 7.500000e+01, %18
  %radiuscoef33 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %19 = load float, float* %radiuscoef33, align 8
  %mul34 = fmul float %mul32, %19
  %conv35 = fptosi float %mul34 to i32
  call void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this1, i32 %conv35)
  call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this1)
  %radiuscoef36 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %20 = load float, float* %radiuscoef36, align 8
  %conv37 = fpext float %20 to double
  %mul38 = fmul double 7.500000e+01, %conv37
  %radiuscoef39 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 11
  %21 = load float, float* %radiuscoef39, align 8
  %conv40 = fpext float %21 to double
  %mul41 = fmul double %mul38, %conv40
  %conv42 = fptosi double %mul41 to i32
  call void @_ZN9regmngobj18enlargeneighborsesEi(%class.regmngobj* %this1, i32 %conv42)
  call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this1)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.end8
  %22 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %23 = load i32, i32* %mapmaxy, align 8
  %cmp43 = icmp slt i32 %22, %23
  br i1 %cmp43, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %x, align 4
  %mapmaxx45 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %25 = load i32, i32* %mapmaxx45, align 4
  %cmp46 = icmp slt i32 %24, %25
  br i1 %cmp46, label %for.body47, label %for.end

for.body47:                                       ; preds = %for.cond44
  %26 = load i32, i32* %x, align 4
  %27 = load i32, i32* %y, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %26, i32 %27)
  %28 = load %class.regobj*, %class.regobj** %call, align 8
  %cmp48 = icmp eq %class.regobj* %28, null
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %for.body47
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 8
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %y, align 4
  %call50 = call zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %this1, i32 %29, i32 %30)
  %idxprom = zext i8 %call50 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %31 to i1
  br i1 %tobool, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.then49
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then49
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %for.body47
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %32 = load i32, i32* %x, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond44

for.end:                                          ; preds = %for.cond44
  br label %for.inc55

for.inc55:                                        ; preds = %for.end
  %33 = load i32, i32* %y, align 4
  %inc56 = add nsw i32 %33, 1
  store i32 %inc56, i32* %y, align 4
  br label %for.cond

for.end57:                                        ; preds = %for.cond
  call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this1)
  call void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* %this1)
  store i32 0, i32* %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc63, %for.end57
  %34 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %35 = load i32, i32* %elemqu, align 8
  %cmp59 = icmp slt i32 %34, %35
  br i1 %cmp59, label %for.body60, label %for.end65

for.body60:                                       ; preds = %for.cond58
  %rarp61 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %36 = load i32, i32* %i, align 4
  %call62 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp61, i32 %36)
  %37 = load %class.regobj*, %class.regobj** %call62, align 8
  %flredefine = getelementptr inbounds %class.regobj, %class.regobj* %37, i32 0, i32 2
  store i8 1, i8* %flredefine, align 1
  br label %for.inc63

for.inc63:                                        ; preds = %for.body60
  %38 = load i32, i32* %i, align 4
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, i32* %i, align 4
  br label %for.cond58

for.end65:                                        ; preds = %for.cond58
  %regionmapp66 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 6
  %39 = load %class.regobj**, %class.regobj*** %regionmapp66, align 8
  %40 = bitcast %class.regobj** %39 to i8*
  %mapsizex67 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 16
  %41 = load i32, i32* %mapsizex67, align 4
  %mapsizey68 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 17
  %42 = load i32, i32* %mapsizey68, align 8
  %mul69 = mul nsw i32 %41, %42
  %conv70 = sext i32 %mul69 to i64
  %mul71 = mul i64 %conv70, 8
  call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 %mul71, i32 8, i1 false)
  call void @_ZN9regmngobj15redefineregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj17foundemptyregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj13deleteregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj13addallregionsEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this1)
  call void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* %this1)
  call void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* %this1)
  store i32 0, i32* %i, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc79, %for.end65
  %43 = load i32, i32* %i, align 4
  %rarp73 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu74 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp73, i32 0, i32 4
  %44 = load i32, i32* %elemqu74, align 8
  %cmp75 = icmp slt i32 %43, %44
  br i1 %cmp75, label %for.body76, label %for.end81

for.body76:                                       ; preds = %for.cond72
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  %45 = load i32, i32* %regfillnum, align 8
  %rarp77 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %46 = load i32, i32* %i, align 4
  %call78 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp77, i32 %46)
  %47 = load %class.regobj*, %class.regobj** %call78, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %47, i32 0, i32 7
  store i32 %45, i32* %fillnum, align 8
  br label %for.inc79

for.inc79:                                        ; preds = %for.body76
  %48 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %48, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond72

for.end81:                                        ; preds = %for.cond72
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj19defineneighborhood1Ev(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %i = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  %region2p = alloca %class.regobj*, align 8
  %flinclude = alloca i8, align 1
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %3 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %3)
  %4 = load %class.regobj*, %class.regobj** %call, align 8
  %index = getelementptr inbounds %class.regobj, %class.regobj* %4, i32 0, i32 6
  store i32 %2, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc10, %for.end
  %6 = load i32, i32* %i, align 4
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu5 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp4, i32 0, i32 4
  %7 = load i32, i32* %elemqu5, align 8
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond3
  %rarp8 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %8 = load i32, i32* %i, align 4
  %call9 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp8, i32 %8)
  %9 = load %class.regobj*, %class.regobj** %call9, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %9, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE5clearEv(%class.flexarray.2* %nb1ar)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %10 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond3

for.end12:                                        ; preds = %for.cond3
  store i32 1, i32* %y, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc64, %for.end12
  %11 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %12 = load i32, i32* %mapmaxy, align 8
  %sub = sub nsw i32 %12, 1
  %cmp14 = icmp sle i32 %11, %sub
  br i1 %cmp14, label %for.body15, label %for.end66

for.body15:                                       ; preds = %for.cond13
  store i32 1, i32* %x, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc61, %for.body15
  %13 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %14 = load i32, i32* %mapmaxx, align 4
  %sub17 = sub nsw i32 %14, 1
  %cmp18 = icmp sle i32 %13, %sub17
  br i1 %cmp18, label %for.body19, label %for.end63

for.body19:                                       ; preds = %for.cond16
  %15 = load i32, i32* %x, align 4
  %16 = load i32, i32* %y, align 4
  %call20 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %15, i32 %16)
  %17 = load %class.regobj*, %class.regobj** %call20, align 8
  store %class.regobj* %17, %class.regobj** %regionp, align 8
  %18 = load %class.regobj*, %class.regobj** %regionp, align 8
  %tobool = icmp ne %class.regobj* %18, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body19
  br label %for.inc61

if.end:                                           ; preds = %for.body19
  %19 = load i32, i32* %y, align 4
  %sub21 = sub nsw i32 %19, 1
  store i32 %sub21, i32* %y1, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc58, %if.end
  %20 = load i32, i32* %y1, align 4
  %21 = load i32, i32* %y, align 4
  %add = add nsw i32 %21, 1
  %cmp23 = icmp sle i32 %20, %add
  br i1 %cmp23, label %for.body24, label %for.end60

for.body24:                                       ; preds = %for.cond22
  %22 = load i32, i32* %x, align 4
  %sub25 = sub nsw i32 %22, 1
  store i32 %sub25, i32* %x1, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc55, %for.body24
  %23 = load i32, i32* %x1, align 4
  %24 = load i32, i32* %x, align 4
  %add27 = add nsw i32 %24, 1
  %cmp28 = icmp sle i32 %23, %add27
  br i1 %cmp28, label %for.body29, label %for.end57

for.body29:                                       ; preds = %for.cond26
  %25 = load i32, i32* %x1, align 4
  %26 = load i32, i32* %y1, align 4
  %call30 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %25, i32 %26)
  %27 = load %class.regobj*, %class.regobj** %call30, align 8
  store %class.regobj* %27, %class.regobj** %region2p, align 8
  %28 = load %class.regobj*, %class.regobj** %region2p, align 8
  %tobool31 = icmp ne %class.regobj* %28, null
  br i1 %tobool31, label %if.then32, label %if.end54

if.then32:                                        ; preds = %for.body29
  %29 = load %class.regobj*, %class.regobj** %regionp, align 8
  %30 = load %class.regobj*, %class.regobj** %region2p, align 8
  %cmp33 = icmp ne %class.regobj* %29, %30
  br i1 %cmp33, label %if.then34, label %if.end53

if.then34:                                        ; preds = %if.then32
  store i8 0, i8* %flinclude, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc45, %if.then34
  %31 = load i32, i32* %i, align 4
  %32 = load %class.regobj*, %class.regobj** %regionp, align 8
  %nb1ar36 = getelementptr inbounds %class.regobj, %class.regobj* %32, i32 0, i32 9
  %elemqu37 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar36, i32 0, i32 1
  %33 = load i32, i32* %elemqu37, align 8
  %cmp38 = icmp slt i32 %31, %33
  br i1 %cmp38, label %for.body39, label %for.end47

for.body39:                                       ; preds = %for.cond35
  %34 = load %class.regobj*, %class.regobj** %regionp, align 8
  %nb1ar40 = getelementptr inbounds %class.regobj, %class.regobj* %34, i32 0, i32 9
  %35 = load i32, i32* %i, align 4
  %call41 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %nb1ar40, i32 %35)
  %36 = load %class.regobj*, %class.regobj** %call41, align 8
  %37 = load %class.regobj*, %class.regobj** %region2p, align 8
  %cmp42 = icmp eq %class.regobj* %36, %37
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body39
  store i8 1, i8* %flinclude, align 1
  br label %for.end47

if.end44:                                         ; preds = %for.body39
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %38 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %38, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond35

for.end47:                                        ; preds = %if.then43, %for.cond35
  %39 = load i8, i8* %flinclude, align 1
  %tobool48 = trunc i8 %39 to i1
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.end47
  br label %for.inc55

if.end50:                                         ; preds = %for.end47
  %40 = load %class.regobj*, %class.regobj** %regionp, align 8
  %nb1ar51 = getelementptr inbounds %class.regobj, %class.regobj* %40, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %nb1ar51, %class.regobj** dereferenceable(8) %region2p)
  %41 = load %class.regobj*, %class.regobj** %region2p, align 8
  %nb1ar52 = getelementptr inbounds %class.regobj, %class.regobj* %41, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %nb1ar52, %class.regobj** dereferenceable(8) %regionp)
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.then32
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %for.body29
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54, %if.then49
  %42 = load i32, i32* %x1, align 4
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, i32* %x1, align 4
  br label %for.cond26

for.end57:                                        ; preds = %for.cond26
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %43 = load i32, i32* %y1, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %y1, align 4
  br label %for.cond22

for.end60:                                        ; preds = %for.cond22
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60, %if.then
  %44 = load i32, i32* %x, align 4
  %inc62 = add nsw i32 %44, 1
  store i32 %inc62, i32* %x, align 4
  br label %for.cond16

for.end63:                                        ; preds = %for.cond16
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %45 = load i32, i32* %y, align 4
  %inc65 = add nsw i32 %45, 1
  store i32 %inc65, i32* %y, align 4
  br label %for.cond13

for.end66:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj20definemiddleregpointEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 5
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  store i32 0, i32* %x3, align 4
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %4 = load i32, i32* %i, align 4
  %call5 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp4, i32 %4)
  %5 = load %class.regobj*, %class.regobj** %call5, align 8
  %centerp6 = getelementptr inbounds %class.regobj, %class.regobj* %5, i32 0, i32 5
  %y7 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp6, i32 0, i32 1
  store i32 0, i32* %y7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc23, %for.end
  %7 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 13
  %8 = load i32, i32* %mapmaxy, align 8
  %cmp9 = icmp sle i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end25

for.body10:                                       ; preds = %for.cond8
  store i32 0, i32* %x, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.body10
  %9 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 12
  %10 = load i32, i32* %mapmaxx, align 4
  %cmp12 = icmp sle i32 %9, %10
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %y, align 4
  %call14 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %this1, i32 %11, i32 %12)
  %13 = load %class.regobj*, %class.regobj** %call14, align 8
  store %class.regobj* %13, %class.regobj** %regionp, align 8
  %14 = load %class.regobj*, %class.regobj** %regionp, align 8
  %tobool = icmp ne %class.regobj* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %15 = load i32, i32* %x, align 4
  %16 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp15 = getelementptr inbounds %class.regobj, %class.regobj* %16, i32 0, i32 5
  %x16 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp15, i32 0, i32 0
  %17 = load i32, i32* %x16, align 4
  %add = add nsw i32 %17, %15
  store i32 %add, i32* %x16, align 4
  %18 = load i32, i32* %y, align 4
  %19 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp17 = getelementptr inbounds %class.regobj, %class.regobj* %19, i32 0, i32 5
  %y18 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp17, i32 0, i32 1
  %20 = load i32, i32* %y18, align 4
  %add19 = add nsw i32 %20, %18
  store i32 %add19, i32* %y18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %21 = load i32, i32* %x, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %x, align 4
  br label %for.cond11

for.end22:                                        ; preds = %for.cond11
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %22 = load i32, i32* %y, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %y, align 4
  br label %for.cond8

for.end25:                                        ; preds = %for.cond8
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc54, %for.end25
  %23 = load i32, i32* %i, align 4
  %rarp27 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu28 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp27, i32 0, i32 4
  %24 = load i32, i32* %elemqu28, align 8
  %cmp29 = icmp slt i32 %23, %24
  br i1 %cmp29, label %for.body30, label %for.end56

for.body30:                                       ; preds = %for.cond26
  %rarp31 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %25 = load i32, i32* %i, align 4
  %call32 = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp31, i32 %25)
  %26 = load %class.regobj*, %class.regobj** %call32, align 8
  store %class.regobj* %26, %class.regobj** %regionp, align 8
  %27 = load %class.regobj*, %class.regobj** %regionp, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %27, i32 0, i32 4
  %28 = load i32, i32* %square, align 8
  %cmp33 = icmp sgt i32 %28, 0
  br i1 %cmp33, label %if.then34, label %if.end53

if.then34:                                        ; preds = %for.body30
  %29 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp35 = getelementptr inbounds %class.regobj, %class.regobj* %29, i32 0, i32 5
  %x36 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp35, i32 0, i32 0
  %30 = load i32, i32* %x36, align 4
  %conv = sitofp i32 %30 to double
  %31 = load %class.regobj*, %class.regobj** %regionp, align 8
  %square37 = getelementptr inbounds %class.regobj, %class.regobj* %31, i32 0, i32 4
  %32 = load i32, i32* %square37, align 8
  %conv38 = sitofp i32 %32 to double
  %div = fdiv double %conv, %conv38
  %conv39 = fptrunc double %div to float
  %call40 = call i32 @_Z7myroundf(float %conv39)
  %33 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp41 = getelementptr inbounds %class.regobj, %class.regobj* %33, i32 0, i32 5
  %x42 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp41, i32 0, i32 0
  store i32 %call40, i32* %x42, align 4
  %34 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp43 = getelementptr inbounds %class.regobj, %class.regobj* %34, i32 0, i32 5
  %y44 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp43, i32 0, i32 1
  %35 = load i32, i32* %y44, align 4
  %conv45 = sitofp i32 %35 to double
  %36 = load %class.regobj*, %class.regobj** %regionp, align 8
  %square46 = getelementptr inbounds %class.regobj, %class.regobj* %36, i32 0, i32 4
  %37 = load i32, i32* %square46, align 8
  %conv47 = sitofp i32 %37 to double
  %div48 = fdiv double %conv45, %conv47
  %conv49 = fptrunc double %div48 to float
  %call50 = call i32 @_Z7myroundf(float %conv49)
  %38 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp51 = getelementptr inbounds %class.regobj, %class.regobj* %38, i32 0, i32 5
  %y52 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp51, i32 0, i32 1
  store i32 %call50, i32* %y52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then34, %for.body30
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %39 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %39, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond26

for.end56:                                        ; preds = %for.cond26
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regmngobj20normalizemiddlepointEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %regionp = alloca %class.regobj*, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %2 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp2, i32 %2)
  %3 = load %class.regobj*, %class.regobj** %call, align 8
  store %class.regobj* %3, %class.regobj** %regionp, align 8
  %4 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %4, i32 0, i32 5
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  %5 = load i32, i32* %x3, align 4
  %6 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp4 = getelementptr inbounds %class.regobj, %class.regobj* %6, i32 0, i32 5
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp4, i32 0, i32 1
  %7 = load i32, i32* %y5, align 4
  %call6 = call zeroext i1 @_ZN9regmngobj13findfreeplaceEiiRiS0_(%class.regmngobj* %this1, i32 %5, i32 %7, i32* dereferenceable(4) %x, i32* dereferenceable(4) %y)
  br i1 %call6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %9 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp7 = getelementptr inbounds %class.regobj, %class.regobj* %9, i32 0, i32 5
  %x8 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp7, i32 0, i32 0
  store i32 %8, i32* %x8, align 4
  %10 = load i32, i32* %y, align 4
  %11 = load %class.regobj*, %class.regobj** %regionp, align 8
  %centerp9 = getelementptr inbounds %class.regobj, %class.regobj* %11, i32 0, i32 5
  %y10 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp9, i32 0, i32 1
  store i32 %10, i32* %y10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN9flexarrayIP6regobjE5clearEv(%class.flexarray.2* %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.flexarray.2*, align 8
  store %class.flexarray.2* %this, %class.flexarray.2** %this.addr, align 8
  %this1 = load %class.flexarray.2*, %class.flexarray.2** %this.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %this1, i32 0, i32 1
  store i32 0, i32* %elemqu, align 8
  ret void
}

; Function Attrs: noinline uwtable
define i32 @_ZN9regmngobj13getregfillnumEv(%class.regmngobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regmngobj*, align 8
  %i = alloca i32, align 4
  store %class.regmngobj* %this, %class.regmngobj** %this.addr, align 8
  %this1 = load %class.regmngobj*, %class.regmngobj** %this.addr, align 8
  %regfillnum = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  %0 = load i32, i32* %regfillnum, align 8
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %regfillnum, align 8
  %regfillnum2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  %1 = load i32, i32* %regfillnum2, align 8
  %cmp = icmp eq i32 %1, 1073741824
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %regfillnum3 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  store i32 1, i32* %regfillnum3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %3 = load i32, i32* %elemqu, align 8
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rarp5 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 18
  %4 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN15largesolidarrayIP6regobjEixEi(%class.largesolidarray* %rarp5, i32 %4)
  %5 = load %class.regobj*, %class.regobj** %call, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %5, i32 0, i32 7
  store i32 0, i32* %fillnum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %6, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %regfillnum7 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %this1, i32 0, i32 5
  %7 = load i32, i32* %regfillnum7, align 8
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_ZN9regwayobj12isaddtoboundEP6regobjS1_(%class.regwayobj* %this, %class.regobj* %initialregionp, %class.regobj* %regionp) unnamed_addr #2 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.regwayobj*, align 8
  %initialregionp.addr = alloca %class.regobj*, align 8
  %regionp.addr = alloca %class.regobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.regobj* %initialregionp, %class.regobj** %initialregionp.addr, align 8
  store %class.regobj* %regionp, %class.regobj** %regionp.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %0 = load %class.regobj*, %class.regobj** %regionp.addr, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %0, i32 0, i32 7
  %1 = load i32, i32* %fillnum, align 8
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 4
  %2 = load i32, i32* %regfillnum, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1
  ret i1 %3
}

; Function Attrs: noinline uwtable
define void @_ZN9regwayobj6createEP9regmngobj(%class.regwayobj* %this, %class.regmngobj* %regmngpin) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  %regmngpin.addr = alloca %class.regmngobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.regmngobj* %regmngpin, %class.regmngobj** %regmngpin.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngpin.addr, align 8
  %regmngp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 5
  store %class.regmngobj* %0, %class.regmngobj** %regmngp, align 8
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  %regmngp2 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 5
  %1 = load %class.regmngobj*, %class.regmngobj** %regmngp2, align 8
  %rarp = getelementptr inbounds %class.regmngobj, %class.regmngobj* %1, i32 0, i32 18
  %elemqu = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp, i32 0, i32 4
  %2 = load i32, i32* %elemqu, align 8
  %add = add nsw i32 %2, 1
  call void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %bound1arp, i32 %add)
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  %regmngp3 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 5
  %3 = load %class.regmngobj*, %class.regmngobj** %regmngp3, align 8
  %rarp4 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %3, i32 0, i32 18
  %elemqu5 = getelementptr inbounds %class.largesolidarray, %class.largesolidarray* %rarp4, i32 0, i32 4
  %4 = load i32, i32* %elemqu5, align 8
  %add6 = add nsw i32 %4, 1
  call void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %bound2arp, i32 %add6)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regwayobj7destroyEv(%class.regwayobj* %this) unnamed_addr #0 align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  call void @_ZN9flexarrayIP6regobjE7destroyEv(%class.flexarray.2* %bound1arp)
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  call void @_ZN9flexarrayIP6regobjE7destroyEv(%class.flexarray.2* %bound2arp)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regwayobj10addtoboundER9flexarrayIP6regobjES2_(%class.regwayobj* %this, %class.flexarray.2* dereferenceable(16) %barp, %class.regobj* %regionp) #0 align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  %barp.addr = alloca %class.flexarray.2*, align 8
  %regionp.addr = alloca %class.regobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.flexarray.2* %barp, %class.flexarray.2** %barp.addr, align 8
  store %class.regobj* %regionp, %class.regobj** %regionp.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 4
  %0 = load i32, i32* %regfillnum, align 4
  %1 = load %class.regobj*, %class.regobj** %regionp.addr, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %1, i32 0, i32 7
  store i32 %0, i32* %fillnum, align 8
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 3
  %2 = load i32, i32* %filltact, align 8
  %3 = load %class.regobj*, %class.regobj** %regionp.addr, align 8
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %3, i32 0, i32 8
  store i32 %2, i32* %waydist, align 4
  %4 = load %class.regobj*, %class.regobj** %regionp.addr, align 8
  %rend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 7
  %5 = load %class.regobj*, %class.regobj** %rend, align 8
  %cmp = icmp eq %class.regobj* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %flend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 6
  store i8 1, i8* %flend, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %class.flexarray.2*, %class.flexarray.2** %barp.addr, align 8
  call void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %6, %class.regobj** dereferenceable(8) %regionp.addr)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* %this, %class.flexarray.2* dereferenceable(16) %b1arp, %class.flexarray.2* dereferenceable(16) %b2arp) #0 align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  %b1arp.addr = alloca %class.flexarray.2*, align 8
  %b2arp.addr = alloca %class.flexarray.2*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %region1p = alloca %class.regobj*, align 8
  %region2p = alloca %class.regobj*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.flexarray.2* %b1arp, %class.flexarray.2** %b1arp.addr, align 8
  store %class.flexarray.2* %b2arp, %class.flexarray.2** %b2arp.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %0 = load %class.flexarray.2*, %class.flexarray.2** %b2arp.addr, align 8
  call void @_ZN9flexarrayIP6regobjE5clearEv(%class.flexarray.2* %0)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %class.flexarray.2*, %class.flexarray.2** %b1arp.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %2, i32 0, i32 1
  %3 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load %class.flexarray.2*, %class.flexarray.2** %b1arp.addr, align 8
  %5 = load i32, i32* %j, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %4, i32 %5)
  %6 = load %class.regobj*, %class.regobj** %call, align 8
  store %class.regobj* %6, %class.regobj** %region1p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load %class.regobj*, %class.regobj** %region1p, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %8, i32 0, i32 9
  %elemqu3 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar, i32 0, i32 1
  %9 = load i32, i32* %elemqu3, align 8
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %10 = load %class.regobj*, %class.regobj** %region1p, align 8
  %nb1ar6 = getelementptr inbounds %class.regobj, %class.regobj* %10, i32 0, i32 9
  %11 = load i32, i32* %i, align 4
  %call7 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %nb1ar6, i32 %11)
  %12 = load %class.regobj*, %class.regobj** %call7, align 8
  store %class.regobj* %12, %class.regobj** %region2p, align 8
  %13 = bitcast %class.regwayobj* %this1 to i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)***
  %vtable = load i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)**, i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)*** %13, align 8
  %vfn = getelementptr inbounds i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)*, i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)** %vtable, i64 0
  %14 = load i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)*, i1 (%class.regwayobj*, %class.regobj*, %class.regobj*)** %vfn, align 8
  %15 = load %class.regobj*, %class.regobj** %region1p, align 8
  %16 = load %class.regobj*, %class.regobj** %region2p, align 8
  %call8 = call zeroext i1 %14(%class.regwayobj* %this1, %class.regobj* %15, %class.regobj* %16)
  br i1 %call8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %17 = load %class.flexarray.2*, %class.flexarray.2** %b2arp.addr, align 8
  %18 = load %class.regobj*, %class.regobj** %region2p, align 8
  call void @_ZN9regwayobj10addtoboundER9flexarrayIP6regobjES2_(%class.regwayobj* %this1, %class.flexarray.2* dereferenceable(16) %17, %class.regobj* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %j, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN9regwayobj4fillEP6regobjS1_(%class.regwayobj* %this, %class.regobj* %rstart, %class.regobj* %rend) #0 align 2 {
entry:
  %this.addr = alloca %class.regwayobj*, align 8
  %rstart.addr = alloca %class.regobj*, align 8
  %rend.addr = alloca %class.regobj*, align 8
  %flodd = alloca i8, align 1
  %newflodd = alloca i8, align 1
  %boundl = alloca i32, align 4
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.regobj* %rstart, %class.regobj** %rstart.addr, align 8
  store %class.regobj* %rend, %class.regobj** %rend.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %flend = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 6
  store i8 0, i8* %flend, align 8
  %0 = load %class.regobj*, %class.regobj** %rend.addr, align 8
  %rend2 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 7
  store %class.regobj* %0, %class.regobj** %rend2, align 8
  %1 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %rstart3 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 8
  store %class.regobj* %1, %class.regobj** %rstart3, align 8
  %regmngp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 5
  %2 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8
  %call = call i32 @_ZN9regmngobj13getregfillnumEv(%class.regmngobj* %2)
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 4
  store i32 %call, i32* %regfillnum, align 4
  %regfillnum4 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 4
  %3 = load i32, i32* %regfillnum4, align 4
  %4 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %4, i32 0, i32 7
  store i32 %3, i32* %fillnum, align 8
  %5 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %5, i32 0, i32 8
  store i32 0, i32* %waydist, align 4
  %bound1arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  call void @_ZN9flexarrayIP6regobjE5clearEv(%class.flexarray.2* %bound1arp)
  %bound1arp5 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  call void @_ZN9flexarrayIP6regobjE3addERKS1_(%class.flexarray.2* %bound1arp5, %class.regobj** dereferenceable(8) %rstart.addr)
  store i32 1, i32* %boundl, align 4
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 3
  store i32 1, i32* %filltact, align 8
  store i8 0, i8* %flodd, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i32, i32* %boundl, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %flend6 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 6
  %7 = load i8, i8* %flend6, align 8
  %tobool = trunc i8 %7 to i1
  %conv = zext i1 %tobool to i32
  %cmp7 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8, i8* %flodd, align 1
  %tobool8 = trunc i8 %9 to i1
  %conv9 = zext i1 %tobool8 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %bound1arp11 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  %bound2arp = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  call void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* %this1, %class.flexarray.2* dereferenceable(16) %bound1arp11, %class.flexarray.2* dereferenceable(16) %bound2arp)
  store i8 1, i8* %newflodd, align 1
  %bound2arp12 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %bound2arp12, i32 0, i32 1
  %10 = load i32, i32* %elemqu, align 8
  store i32 %10, i32* %boundl, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %bound2arp13 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 2
  %bound1arp14 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  call void @_ZN9regwayobj10makebound2ER9flexarrayIP6regobjES4_(%class.regwayobj* %this1, %class.flexarray.2* dereferenceable(16) %bound2arp13, %class.flexarray.2* dereferenceable(16) %bound1arp14)
  store i8 0, i8* %newflodd, align 1
  %bound1arp15 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 1
  %elemqu16 = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %bound1arp15, i32 0, i32 1
  %11 = load i32, i32* %elemqu16, align 8
  store i32 %11, i32* %boundl, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i8, i8* %newflodd, align 1
  %tobool17 = trunc i8 %12 to i1
  %frombool = zext i1 %tobool17 to i8
  store i8 %frombool, i8* %flodd, align 1
  %filltact18 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 3
  %13 = load i32, i32* %filltact18, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %filltact18, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %flend19 = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 6
  %14 = load i8, i8* %flend19, align 8
  %tobool20 = trunc i8 %14 to i1
  ret i1 %tobool20
}

; Function Attrs: noinline uwtable
define i32 @_ZN9regwayobj6getwayEP6regobjRPS1_(%class.regwayobj* %this, %class.regobj* %rend, %class.regobj*** dereferenceable(8) %wayar) #0 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.regwayobj*, align 8
  %rend.addr = alloca %class.regobj*, align 8
  %wayar.addr = alloca %class.regobj***, align 8
  %waylength = alloca i32, align 4
  %regionp = alloca %class.regobj*, align 8
  %region2p = alloca %class.regobj*, align 8
  %minregionp = alloca %class.regobj*, align 8
  %dist2 = alloca float, align 4
  %mindist2 = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.regobj* %rend, %class.regobj** %rend.addr, align 8
  store %class.regobj*** %wayar, %class.regobj**** %wayar.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %filltact = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 3
  %0 = load i32, i32* %filltact, align 8
  store i32 %0, i32* %waylength, align 4
  %1 = load i32, i32* %waylength, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #10
  %2 = bitcast i8* %call to %class.regobj**
  %3 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  store %class.regobj** %2, %class.regobj*** %3, align 8
  %4 = load %class.regobj*, %class.regobj** %rend.addr, align 8
  %5 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %6 = load %class.regobj**, %class.regobj*** %5, align 8
  %7 = load i32, i32* %waylength, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %6, i64 %idxprom
  store %class.regobj* %4, %class.regobj** %arrayidx, align 8
  %8 = load i32, i32* %waylength, align 4
  %sub2 = sub nsw i32 %8, 1
  store i32 %sub2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %10 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %11 = load %class.regobj**, %class.regobj*** %10, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %class.regobj*, %class.regobj** %11, i64 %idxprom3
  %13 = load %class.regobj*, %class.regobj** %arrayidx4, align 8
  store %class.regobj* %13, %class.regobj** %regionp, align 8
  store %class.regobj* null, %class.regobj** %minregionp, align 8
  store float 1.000000e+10, float* %mindist2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4
  %15 = load %class.regobj*, %class.regobj** %regionp, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %15, i32 0, i32 9
  %elemqu = getelementptr inbounds %class.flexarray.2, %class.flexarray.2* %nb1ar, i32 0, i32 1
  %16 = load i32, i32* %elemqu, align 8
  %cmp6 = icmp slt i32 %14, %16
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %17 = load %class.regobj*, %class.regobj** %regionp, align 8
  %nb1ar8 = getelementptr inbounds %class.regobj, %class.regobj* %17, i32 0, i32 9
  %18 = load i32, i32* %j, align 4
  %call9 = call dereferenceable(8) %class.regobj** @_ZN9flexarrayIP6regobjEixEi(%class.flexarray.2* %nb1ar8, i32 %18)
  %19 = load %class.regobj*, %class.regobj** %call9, align 8
  store %class.regobj* %19, %class.regobj** %region2p, align 8
  %20 = load %class.regobj*, %class.regobj** %region2p, align 8
  %fillnum = getelementptr inbounds %class.regobj, %class.regobj* %20, i32 0, i32 7
  %21 = load i32, i32* %fillnum, align 8
  %regfillnum = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 4
  %22 = load i32, i32* %regfillnum, align 4
  %cmp10 = icmp eq i32 %21, %22
  br i1 %cmp10, label %if.then, label %if.end22

if.then:                                          ; preds = %for.body7
  %23 = load %class.regobj*, %class.regobj** %region2p, align 8
  %waydist = getelementptr inbounds %class.regobj, %class.regobj* %23, i32 0, i32 8
  %24 = load i32, i32* %waydist, align 4
  %25 = load i32, i32* %i, align 4
  %sub11 = sub nsw i32 %25, 1
  %cmp12 = icmp eq i32 %24, %sub11
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.then
  %26 = load %class.regobj*, %class.regobj** %minregionp, align 8
  %cmp14 = icmp eq %class.regobj* %26, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  %27 = load %class.regobj*, %class.regobj** %region2p, align 8
  store %class.regobj* %27, %class.regobj** %minregionp, align 8
  %28 = load %class.regobj*, %class.regobj** %region2p, align 8
  %29 = load %class.regobj*, %class.regobj** %rend.addr, align 8
  %call16 = call float @_Z8regdist2P6regobjS0_(%class.regobj* %28, %class.regobj* %29)
  store float %call16, float* %mindist2, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then13
  %30 = load %class.regobj*, %class.regobj** %region2p, align 8
  %31 = load %class.regobj*, %class.regobj** %rend.addr, align 8
  %call17 = call float @_Z8regdist2P6regobjS0_(%class.regobj* %30, %class.regobj* %31)
  store float %call17, float* %dist2, align 4
  %32 = load float, float* %dist2, align 4
  %33 = load float, float* %mindist2, align 4
  %cmp18 = fcmp olt float %32, %33
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  %34 = load float, float* %dist2, align 4
  store float %34, float* %mindist2, align 4
  %35 = load %class.regobj*, %class.regobj** %region2p, align 8
  store %class.regobj* %35, %class.regobj** %minregionp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %37 = load %class.regobj*, %class.regobj** %minregionp, align 8
  %cmp23 = icmp eq %class.regobj* %37, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %for.end
  %38 = load %class.regobj*, %class.regobj** %minregionp, align 8
  %39 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %40 = load %class.regobj**, %class.regobj*** %39, align 8
  %41 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 %41, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds %class.regobj*, %class.regobj** %40, i64 %idxprom27
  store %class.regobj* %38, %class.regobj** %arrayidx28, align 8
  br label %for.inc29

for.inc29:                                        ; preds = %if.end25
  %42 = load i32, i32* %i, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end30:                                        ; preds = %for.cond
  %rstart = getelementptr inbounds %class.regwayobj, %class.regwayobj* %this1, i32 0, i32 8
  %43 = load %class.regobj*, %class.regobj** %rstart, align 8
  %44 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %45 = load %class.regobj**, %class.regobj*** %44, align 8
  %arrayidx31 = getelementptr inbounds %class.regobj*, %class.regobj** %45, i64 0
  store %class.regobj* %43, %class.regobj** %arrayidx31, align 8
  %46 = load i32, i32* %waylength, align 4
  store i32 %46, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end30, %if.then24
  %47 = load i32, i32* %retval, align 4
  ret i32 %47
}

; Function Attrs: noinline uwtable
define linkonce_odr float @_Z8regdist2P6regobjS0_(%class.regobj* %r1, %class.regobj* %r2) #0 comdat {
entry:
  %r1.addr = alloca %class.regobj*, align 8
  %r2.addr = alloca %class.regobj*, align 8
  store %class.regobj* %r1, %class.regobj** %r1.addr, align 8
  store %class.regobj* %r2, %class.regobj** %r2.addr, align 8
  %0 = load %class.regobj*, %class.regobj** %r1.addr, align 8
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %0, i32 0, i32 5
  %x = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  %1 = load i32, i32* %x, align 4
  %2 = load %class.regobj*, %class.regobj** %r2.addr, align 8
  %centerp1 = getelementptr inbounds %class.regobj, %class.regobj* %2, i32 0, i32 5
  %x2 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp1, i32 0, i32 0
  %3 = load i32, i32* %x2, align 4
  %sub = sub nsw i32 %1, %3
  %conv = sitofp i32 %sub to float
  %call = call float @_Z3sqrf(float %conv)
  %4 = load %class.regobj*, %class.regobj** %r1.addr, align 8
  %centerp3 = getelementptr inbounds %class.regobj, %class.regobj* %4, i32 0, i32 5
  %y = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp3, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %6 = load %class.regobj*, %class.regobj** %r2.addr, align 8
  %centerp4 = getelementptr inbounds %class.regobj, %class.regobj* %6, i32 0, i32 5
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp4, i32 0, i32 1
  %7 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %5, %7
  %conv7 = sitofp i32 %sub6 to float
  %call8 = call float @_Z3sqrf(float %conv7)
  %add = fadd float %call, %call8
  ret float %add
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_Z3sqrf(float %x) #2 comdat {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %1 = load float, float* %x.addr, align 4
  %mul = fmul float %0, %1
  ret float %mul
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN9regwayobj9createwayEP6regobjS1_RPS1_Ri(%class.regwayobj* %this, %class.regobj* %rstart, %class.regobj* %rfinish, %class.regobj*** dereferenceable(8) %wayar, i32* dereferenceable(4) %waylength) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.regwayobj*, align 8
  %rstart.addr = alloca %class.regobj*, align 8
  %rfinish.addr = alloca %class.regobj*, align 8
  %wayar.addr = alloca %class.regobj***, align 8
  %waylength.addr = alloca i32*, align 8
  store %class.regwayobj* %this, %class.regwayobj** %this.addr, align 8
  store %class.regobj* %rstart, %class.regobj** %rstart.addr, align 8
  store %class.regobj* %rfinish, %class.regobj** %rfinish.addr, align 8
  store %class.regobj*** %wayar, %class.regobj**** %wayar.addr, align 8
  store i32* %waylength, i32** %waylength.addr, align 8
  %this1 = load %class.regwayobj*, %class.regwayobj** %this.addr, align 8
  %0 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %1 = load %class.regobj*, %class.regobj** %rfinish.addr, align 8
  %cmp = icmp eq %class.regobj* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 8) #10
  %2 = bitcast i8* %call to %class.regobj**
  %3 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  store %class.regobj** %2, %class.regobj*** %3, align 8
  %4 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %5 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %6 = load %class.regobj**, %class.regobj*** %5, align 8
  %arrayidx = getelementptr inbounds %class.regobj*, %class.regobj** %6, i64 0
  store %class.regobj* %4, %class.regobj** %arrayidx, align 8
  %7 = load i32*, i32** %waylength.addr, align 8
  store i32 1, i32* %7, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %class.regobj*, %class.regobj** %rstart.addr, align 8
  %9 = load %class.regobj*, %class.regobj** %rfinish.addr, align 8
  %call2 = call zeroext i1 @_ZN9regwayobj4fillEP6regobjS1_(%class.regwayobj* %this1, %class.regobj* %8, %class.regobj* %9)
  br i1 %call2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %10 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  store %class.regobj** null, %class.regobj*** %10, align 8
  %11 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %11, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load %class.regobj*, %class.regobj** %rfinish.addr, align 8
  %13 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %call5 = call i32 @_ZN9regwayobj6getwayEP6regobjRPS1_(%class.regwayobj* %this1, %class.regobj* %12, %class.regobj*** dereferenceable(8) %13)
  %14 = load i32*, i32** %waylength.addr, align 8
  store i32 %call5, i32* %14, align 4
  %15 = load i32*, i32** %waylength.addr, align 8
  %16 = load i32, i32* %15, align 4
  %cmp6 = icmp eq i32 %16, -1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  %17 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  %18 = load %class.regobj**, %class.regobj*** %17, align 8
  %19 = bitcast %class.regobj** %18 to i8*
  call void @free(i8* %19) #10
  %20 = load %class.regobj***, %class.regobj**** %wayar.addr, align 8
  store %class.regobj** null, %class.regobj*** %20, align 8
  %21 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %21, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end8:                                          ; preds = %if.end4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %22 = load i1, i1* %retval, align 1
  ret i1 %22
}

; Function Attrs: noinline uwtable
define void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* %this, %class.flexarray* dereferenceable(16) %barp, i32 %x, i32 %y) #0 align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  %barp.addr = alloca %class.flexarray*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %ref.tmp = alloca %struct.pointt, align 4
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  store %class.flexarray* %barp, %class.flexarray** %barp.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %0 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8
  %flpasablear = getelementptr inbounds %class.regmngobj, %class.regmngobj* %0, i32 0, i32 8
  %regmngp2 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %1 = load %class.regmngobj*, %class.regmngobj** %regmngp2, align 8
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %call = call zeroext i8 @_ZN9regmngobj4mappEii(%class.regmngobj* %1, i32 %2, i32 %3)
  %idxprom = zext i8 %call to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %flpasablear, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %x.addr, align 4
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 5
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %5, %6
  %call4 = call i32 @_Z3sqri(i32 %sub)
  %7 = load i32, i32* %y.addr, align 4
  %centerp5 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 5
  %y6 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp5, i32 0, i32 1
  %8 = load i32, i32* %y6, align 4
  %sub7 = sub nsw i32 %7, %8
  %call8 = call i32 @_Z3sqri(i32 %sub7)
  %add = add nsw i32 %call4, %call8
  %conv = sitofp i32 %add to float
  %call9 = call i32 @_Z7myroundf(float %conv)
  %regmngp10 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %9 = load %class.regmngobj*, %class.regmngobj** %regmngp10, align 8
  %regionradius2 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %9, i32 0, i32 10
  %10 = load i32, i32* %regionradius2, align 4
  %cmp = icmp sle i32 %call9, %10
  br i1 %cmp, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %11 = load %class.flexarray*, %class.flexarray** %barp.addr, align 8
  %12 = load i32, i32* %x.addr, align 4
  %13 = load i32, i32* %y.addr, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %12, i32 %13)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %11, %struct.pointt* dereferenceable(8) %ref.tmp)
  %regmngp12 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %14 = load %class.regmngobj*, %class.regmngobj** %regmngp12, align 8
  %15 = load i32, i32* %x.addr, align 4
  %16 = load i32, i32* %y.addr, align 4
  %call13 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %14, i32 %15, i32 %16)
  store %class.regobj* %this1, %class.regobj** %call13, align 8
  %square = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 4
  %17 = load i32, i32* %square, align 8
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %square, align 8
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this, %class.flexarray* dereferenceable(16) %b1arp, %class.flexarray* dereferenceable(16) %b2arp) #0 align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  %b1arp.addr = alloca %class.flexarray*, align 8
  %b2arp.addr = alloca %class.flexarray*, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  store %class.flexarray* %b1arp, %class.flexarray** %b1arp.addr, align 8
  store %class.flexarray* %b2arp, %class.flexarray** %b2arp.addr, align 8
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %0 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  call void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %0)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %2, i32 0, i32 1
  %3 = load i32, i32* %elemqu, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %4 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %5 = load i32, i32* %j, align 4
  %call = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %4, i32 %5)
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %call, i32 0, i32 0
  %6 = load i32, i32* %x3, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %x1, align 4
  %7 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call4 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %7, i32 %8)
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %call4, i32 0, i32 1
  %9 = load i32, i32* %y5, align 4
  %sub6 = sub nsw i32 %9, 1
  store i32 %sub6, i32* %y1, align 4
  %10 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %11 = load i32, i32* %j, align 4
  %call7 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %10, i32 %11)
  %x8 = getelementptr inbounds %struct.pointt, %struct.pointt* %call7, i32 0, i32 0
  %12 = load i32, i32* %x8, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %x2, align 4
  %13 = load %class.flexarray*, %class.flexarray** %b1arp.addr, align 8
  %14 = load i32, i32* %j, align 4
  %call9 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %13, i32 %14)
  %y10 = getelementptr inbounds %struct.pointt, %struct.pointt* %call9, i32 0, i32 1
  %15 = load i32, i32* %y10, align 4
  %add11 = add nsw i32 %15, 1
  store i32 %add11, i32* %y2, align 4
  %16 = load i32, i32* %x1, align 4
  %cmp12 = icmp slt i32 %16, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %17 = load i32, i32* %y1, align 4
  %cmp13 = icmp slt i32 %17, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 0, i32* %y1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %18 = load i32, i32* %x2, align 4
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %19 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %19, i32 0, i32 12
  %20 = load i32, i32* %mapmaxx, align 4
  %cmp16 = icmp sgt i32 %18, %20
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end15
  %regmngp18 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %21 = load %class.regmngobj*, %class.regmngobj** %regmngp18, align 8
  %mapmaxx19 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %21, i32 0, i32 12
  %22 = load i32, i32* %mapmaxx19, align 4
  store i32 %22, i32* %x2, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15
  %23 = load i32, i32* %y2, align 4
  %regmngp21 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %24 = load %class.regmngobj*, %class.regmngobj** %regmngp21, align 8
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %24, i32 0, i32 13
  %25 = load i32, i32* %mapmaxy, align 8
  %cmp22 = icmp sgt i32 %23, %25
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end20
  %regmngp24 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %26 = load %class.regmngobj*, %class.regmngobj** %regmngp24, align 8
  %mapmaxy25 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %26, i32 0, i32 13
  %27 = load i32, i32* %mapmaxy25, align 8
  store i32 %27, i32* %y2, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20
  %28 = load i32, i32* %y1, align 4
  store i32 %28, i32* %y, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc38, %if.end26
  %29 = load i32, i32* %y, align 4
  %30 = load i32, i32* %y2, align 4
  %cmp28 = icmp sle i32 %29, %30
  br i1 %cmp28, label %for.body29, label %for.end40

for.body29:                                       ; preds = %for.cond27
  %31 = load i32, i32* %x1, align 4
  store i32 %31, i32* %x, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %for.body29
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %x2, align 4
  %cmp31 = icmp sle i32 %32, %33
  br i1 %cmp31, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond30
  %regmngp33 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %34 = load %class.regmngobj*, %class.regmngobj** %regmngp33, align 8
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* %y, align 4
  %call34 = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %34, i32 %35, i32 %36)
  %37 = load %class.regobj*, %class.regobj** %call34, align 8
  %cmp35 = icmp eq %class.regobj* %37, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body32
  %38 = load %class.flexarray*, %class.flexarray** %b2arp.addr, align 8
  %39 = load i32, i32* %x, align 4
  %40 = load i32, i32* %y, align 4
  call void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* %this1, %class.flexarray* dereferenceable(16) %38, i32 %39, i32 %40)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.body32
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %41 = load i32, i32* %x, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond30

for.end:                                          ; preds = %for.cond30
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %42 = load i32, i32* %y, align 4
  %inc39 = add nsw i32 %42, 1
  store i32 %inc39, i32* %y, align 4
  br label %for.cond27

for.end40:                                        ; preds = %for.cond27
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %43 = load i32, i32* %j, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %j, align 4
  br label %for.cond

for.end43:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6regobj6createEii(%class.regobj* %this, i32 %x0, i32 %y0) #0 align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %newflodd = alloca i8, align 1
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %0 = load i32, i32* %x0.addr, align 4
  %centerp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 5
  %x3 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp, i32 0, i32 0
  store i32 %0, i32* %x3, align 4
  %1 = load i32, i32* %y0.addr, align 4
  %centerp4 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 5
  %y5 = getelementptr inbounds %struct.pointt, %struct.pointt* %centerp4, i32 0, i32 1
  store i32 %1, i32* %y5, align 4
  %square = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 4
  store i32 0, i32* %square, align 8
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* @_ZN6regobj9bound1arpE, i32 128)
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* @_ZN6regobj9bound2arpE, i32 128)
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %nb1ar, i32 4)
  %2 = load i32, i32* %x0.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %x1, align 4
  %3 = load i32, i32* %y0.addr, align 4
  %sub6 = sub nsw i32 %3, 1
  store i32 %sub6, i32* %y1, align 4
  %4 = load i32, i32* %x0.addr, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %x2, align 4
  %5 = load i32, i32* %y0.addr, align 4
  %add7 = add nsw i32 %5, 1
  store i32 %add7, i32* %y2, align 4
  %6 = load i32, i32* %x1, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %y1, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %y1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %8 = load i32, i32* %x2, align 4
  %regmngp = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %9 = load %class.regmngobj*, %class.regmngobj** %regmngp, align 8
  %mapmaxx = getelementptr inbounds %class.regmngobj, %class.regmngobj* %9, i32 0, i32 12
  %10 = load i32, i32* %mapmaxx, align 4
  %cmp11 = icmp sgt i32 %8, %10
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %regmngp13 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %11 = load %class.regmngobj*, %class.regmngobj** %regmngp13, align 8
  %mapmaxx14 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %11, i32 0, i32 12
  %12 = load i32, i32* %mapmaxx14, align 4
  store i32 %12, i32* %x2, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %13 = load i32, i32* %y2, align 4
  %regmngp16 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %14 = load %class.regmngobj*, %class.regmngobj** %regmngp16, align 8
  %mapmaxy = getelementptr inbounds %class.regmngobj, %class.regmngobj* %14, i32 0, i32 13
  %15 = load i32, i32* %mapmaxy, align 8
  %cmp17 = icmp sgt i32 %13, %15
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %regmngp19 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %16 = load %class.regmngobj*, %class.regmngobj** %regmngp19, align 8
  %mapmaxy20 = getelementptr inbounds %class.regmngobj, %class.regmngobj* %16, i32 0, i32 13
  %17 = load i32, i32* %mapmaxy20, align 8
  store i32 %17, i32* %y2, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15
  %18 = load i32, i32* %y1, align 4
  store i32 %18, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %if.end21
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %y2, align 4
  %cmp22 = icmp sle i32 %19, %20
  br i1 %cmp22, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %x1, align 4
  store i32 %21, i32* %x, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %x2, align 4
  %cmp24 = icmp sle i32 %22, %23
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %regmngp26 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 3
  %24 = load %class.regmngobj*, %class.regmngobj** %regmngp26, align 8
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %call = call dereferenceable(8) %class.regobj** @_ZN9regmngobj7regmappEii(%class.regmngobj* %24, i32 %25, i32 %26)
  %27 = load %class.regobj*, %class.regobj** %call, align 8
  %cmp27 = icmp eq %class.regobj* %27, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body25
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* %y, align 4
  call void @_ZN6regobj10addtoboundER9flexarrayI6pointtEii(%class.regobj* %this1, %class.flexarray* dereferenceable(16) @_ZN6regobj9bound1arpE, i32 %28, i32 %29)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.body25
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %30 = load i32, i32* %x, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond23

for.end:                                          ; preds = %for.cond23
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %31 = load i32, i32* %y, align 4
  %inc31 = add nsw i32 %31, 1
  store i32 %inc31, i32* %y, align 4
  br label %for.cond

for.end32:                                        ; preds = %for.cond
  %32 = load i32, i32* getelementptr inbounds (%class.flexarray, %class.flexarray* @_ZN6regobj9bound1arpE, i32 0, i32 1), align 8
  store i32 %32, i32* @_ZN6regobj6boundlE, align 4
  %33 = load i32, i32* @_ZN6regobj6boundlE, align 4
  %cmp33 = icmp ne i32 %33, 0
  br i1 %cmp33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.end32
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 1
  store i8 1, i8* %flexist, align 4
  br label %if.end36

if.else:                                          ; preds = %for.end32
  %flexist35 = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 1
  store i8 0, i8* %flexist35, align 4
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* @_ZN6regobj9bound1arpE)
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* @_ZN6regobj9bound2arpE)
  br label %return

if.end36:                                         ; preds = %if.then34
  store i8 0, i8* @_ZN6regobj5floddE, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %if.end36
  %34 = load i32, i32* @_ZN6regobj6boundlE, align 4
  %cmp37 = icmp ne i32 %34, 0
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i8, i8* @_ZN6regobj5floddE, align 1
  %tobool = trunc i8 %35 to i1
  %conv = zext i1 %tobool to i32
  %cmp38 = icmp eq i32 %conv, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %while.body
  call void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this1, %class.flexarray* dereferenceable(16) @_ZN6regobj9bound1arpE, %class.flexarray* dereferenceable(16) @_ZN6regobj9bound2arpE)
  store i8 1, i8* %newflodd, align 1
  %36 = load i32, i32* getelementptr inbounds (%class.flexarray, %class.flexarray* @_ZN6regobj9bound2arpE, i32 0, i32 1), align 8
  store i32 %36, i32* @_ZN6regobj6boundlE, align 4
  br label %if.end41

if.else40:                                        ; preds = %while.body
  call void @_ZN6regobj10makebound2ER9flexarrayI6pointtES3_(%class.regobj* %this1, %class.flexarray* dereferenceable(16) @_ZN6regobj9bound2arpE, %class.flexarray* dereferenceable(16) @_ZN6regobj9bound1arpE)
  store i8 0, i8* %newflodd, align 1
  %37 = load i32, i32* getelementptr inbounds (%class.flexarray, %class.flexarray* @_ZN6regobj9bound1arpE, i32 0, i32 1), align 8
  store i32 %37, i32* @_ZN6regobj6boundlE, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  %38 = load i8, i8* %newflodd, align 1
  %tobool42 = trunc i8 %38 to i1
  %frombool = zext i1 %tobool42 to i8
  store i8 %frombool, i8* @_ZN6regobj5floddE, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* @_ZN6regobj9bound1arpE)
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* @_ZN6regobj9bound2arpE)
  br label %return

return:                                           ; preds = %while.end, %if.else
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6regobj6createEv(%class.regobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE6createEi(%class.flexarray.2* %nb1ar, i32 4)
  %flexist = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 1
  store i8 1, i8* %flexist, align 4
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6regobj7destroyEv(%class.regobj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.regobj*, align 8
  store %class.regobj* %this, %class.regobj** %this.addr, align 8
  %this1 = load %class.regobj*, %class.regobj** %this.addr, align 8
  %nb1ar = getelementptr inbounds %class.regobj, %class.regobj* %this1, i32 0, i32 9
  call void @_ZN9flexarrayIP6regobjE7destroyEv(%class.flexarray.2* %nb1ar)
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj12isaddtoboundEii(%class.way2obj* %this, i32 %x, i32 %y) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.way2obj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call zeroext i8 @_ZN7way2obj8movetimeEii(%class.way2obj* %this1, i32 %0, i32 %1)
  %conv = zext i8 %call to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr zeroext i8 @_ZN7way2obj8movetimeEii(%class.way2obj* %this, i32 %x, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %movetimear = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 3
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  %0 = load i8*, i8** %mapp, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %3 = load i32, i32* %mapsizex, align 8
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  ret i8 %5
}

; Function Attrs: noinline uwtable
define void @_ZN7way2obj10addtoboundEii(%class.way2obj* %this, i32 %x, i32 %y) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %boundnum = alloca i32, align 4
  %ref.tmp = alloca %struct.pointt, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %filltact = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 7
  %0 = load i32, i32* %filltact, align 8
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %y.addr, align 4
  %call = call zeroext i8 @_ZN7way2obj8movetimeEii(%class.way2obj* %this1, i32 %1, i32 %2)
  %conv = zext i8 %call to i32
  %add = add nsw i32 %0, %conv
  %rem = srem i32 %add, 256
  store i32 %rem, i32* %boundnum, align 4
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %3 = load i32, i32* %boundnum, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %4, i32 %5)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %arrayidx, %struct.pointt* dereferenceable(8) %ref.tmp)
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN7way2obj12releasepointEii(%class.way2obj* %this, i32 %px, i32 %py) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %mindist = alloca i32, align 4
  %dist = alloca i32, align 4
  %flcenter = alloca i8, align 1
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %px, i32* %px.addr, align 4
  store i32 %py, i32* %py.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %0 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %1 = load i32, i32* %px.addr, align 4
  %2 = load i32, i32* %py.addr, align 4
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %3 = load i32, i32* %mapsizex, align 8
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %1, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %0, i64 %idxprom
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %4 = load i16, i16* %fillnum, align 2
  %conv = zext i16 %4 to i32
  %fillnum2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %5 = load i16, i16* %fillnum2, align 8
  %conv3 = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end93

if.end:                                           ; preds = %entry
  %fillnum4 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %6 = load i16, i16* %fillnum4, align 8
  %waymap5 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %7 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap5, align 8
  %8 = load i32, i32* %px.addr, align 4
  %9 = load i32, i32* %py.addr, align 4
  %mapsizex6 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %10 = load i32, i32* %mapsizex6, align 8
  %mul7 = mul nsw i32 %9, %10
  %add8 = add nsw i32 %8, %mul7
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %7, i64 %idxprom9
  %fillnum11 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx10, i32 0, i32 0
  store i16 %6, i16* %fillnum11, align 2
  %11 = load i32, i32* %px.addr, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %x1, align 4
  %12 = load i32, i32* %py.addr, align 4
  %sub12 = sub nsw i32 %12, 1
  store i32 %sub12, i32* %y1, align 4
  %13 = load i32, i32* %px.addr, align 4
  %add13 = add nsw i32 %13, 1
  store i32 %add13, i32* %x2, align 4
  %14 = load i32, i32* %py.addr, align 4
  %add14 = add nsw i32 %14, 1
  store i32 %add14, i32* %y2, align 4
  %15 = load i32, i32* %x1, align 4
  %cmp15 = icmp slt i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  store i32 0, i32* %x1, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end
  %16 = load i32, i32* %y1, align 4
  %cmp18 = icmp slt i32 %16, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 0, i32* %y1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17
  %17 = load i32, i32* %x2, align 4
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  %18 = load i32, i32* %mapmaxx, align 8
  %cmp21 = icmp sgt i32 %17, %18
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %mapmaxx23 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  %19 = load i32, i32* %mapmaxx23, align 8
  store i32 %19, i32* %x2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %20 = load i32, i32* %y2, align 4
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  %21 = load i32, i32* %mapmaxy, align 4
  %cmp25 = icmp sgt i32 %20, %21
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %mapmaxy27 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  %22 = load i32, i32* %mapmaxy27, align 4
  store i32 %22, i32* %y2, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store i32 10000000, i32* %mindist, align 4
  store i8 1, i8* %flcenter, align 1
  %23 = load i32, i32* %y1, align 4
  store i32 %23, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.end28
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %y2, align 4
  %cmp29 = icmp sle i32 %24, %25
  br i1 %cmp29, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %x1, align 4
  store i32 %26, i32* %x, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %for.body
  %27 = load i32, i32* %x, align 4
  %28 = load i32, i32* %x2, align 4
  %cmp31 = icmp sle i32 %27, %28
  br i1 %cmp31, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond30
  %29 = load i32, i32* %x, align 4
  %30 = load i32, i32* %px.addr, align 4
  %cmp33 = icmp ne i32 %29, %30
  br i1 %cmp33, label %if.then35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body32
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %py.addr, align 4
  %cmp34 = icmp ne i32 %31, %32
  br i1 %cmp34, label %if.then35, label %if.end61

if.then35:                                        ; preds = %lor.lhs.false, %for.body32
  %waymap36 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %33 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap36, align 8
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* %y, align 4
  %mapsizex37 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %36 = load i32, i32* %mapsizex37, align 8
  %mul38 = mul nsw i32 %35, %36
  %add39 = add nsw i32 %34, %mul38
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %33, i64 %idxprom40
  %fillnum42 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx41, i32 0, i32 0
  %37 = load i16, i16* %fillnum42, align 2
  %conv43 = zext i16 %37 to i32
  %fillnum44 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %38 = load i16, i16* %fillnum44, align 8
  %conv45 = zext i16 %38 to i32
  %cmp46 = icmp eq i32 %conv43, %conv45
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.then35
  %waymap48 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %39 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap48, align 8
  %40 = load i32, i32* %x, align 4
  %41 = load i32, i32* %y, align 4
  %mapsizex49 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %42 = load i32, i32* %mapsizex49, align 8
  %mul50 = mul nsw i32 %41, %42
  %add51 = add nsw i32 %40, %mul50
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %39, i64 %idxprom52
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx53, i32 0, i32 1
  %43 = load i16, i16* %num, align 2
  %conv54 = zext i16 %43 to i32
  store i32 %conv54, i32* %dist, align 4
  %44 = load i32, i32* %dist, align 4
  %45 = load i32, i32* %mindist, align 4
  %cmp55 = icmp slt i32 %44, %45
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then47
  %46 = load i32, i32* %dist, align 4
  store i32 %46, i32* %mindist, align 4
  store i8 0, i8* %flcenter, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then47
  br label %if.end60

if.else:                                          ; preds = %if.then35
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %y, align 4
  %call = call zeroext i1 @_ZN7way2obj12isaddtoboundEii(%class.way2obj* %this1, i32 %47, i32 %48)
  br i1 %call, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else
  %49 = load i32, i32* %x, align 4
  %50 = load i32, i32* %y, align 4
  call void @_ZN7way2obj10addtoboundEii(%class.way2obj* %this1, i32 %49, i32 %50)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end57
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end61
  %51 = load i32, i32* %x, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond30

for.end:                                          ; preds = %for.cond30
  br label %for.inc62

for.inc62:                                        ; preds = %for.end
  %52 = load i32, i32* %y, align 4
  %inc63 = add nsw i32 %52, 1
  store i32 %inc63, i32* %y, align 4
  br label %for.cond

for.end64:                                        ; preds = %for.cond
  %53 = load i8, i8* %flcenter, align 1
  %tobool = trunc i8 %53 to i1
  %conv65 = zext i1 %tobool to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %if.then67, label %if.else79

if.then67:                                        ; preds = %for.end64
  %54 = load i32, i32* %mindist, align 4
  %55 = load i32, i32* %px.addr, align 4
  %56 = load i32, i32* %py.addr, align 4
  %call68 = call zeroext i8 @_ZN7way2obj8movetimeEii(%class.way2obj* %this1, i32 %55, i32 %56)
  %conv69 = zext i8 %call68 to i32
  %add70 = add nsw i32 %54, %conv69
  %conv71 = trunc i32 %add70 to i16
  %waymap72 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %57 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap72, align 8
  %58 = load i32, i32* %px.addr, align 4
  %59 = load i32, i32* %py.addr, align 4
  %mapsizex73 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %60 = load i32, i32* %mapsizex73, align 8
  %mul74 = mul nsw i32 %59, %60
  %add75 = add nsw i32 %58, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %57, i64 %idxprom76
  %num78 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx77, i32 0, i32 1
  store i16 %conv71, i16* %num78, align 2
  br label %if.end89

if.else79:                                        ; preds = %for.end64
  %61 = load i32, i32* %px.addr, align 4
  %62 = load i32, i32* %py.addr, align 4
  %call80 = call zeroext i8 @_ZN7way2obj8movetimeEii(%class.way2obj* %this1, i32 %61, i32 %62)
  %conv81 = zext i8 %call80 to i16
  %waymap82 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %63 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap82, align 8
  %64 = load i32, i32* %px.addr, align 4
  %65 = load i32, i32* %py.addr, align 4
  %mapsizex83 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %66 = load i32, i32* %mapsizex83, align 8
  %mul84 = mul nsw i32 %65, %66
  %add85 = add nsw i32 %64, %mul84
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %63, i64 %idxprom86
  %num88 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx87, i32 0, i32 1
  store i16 %conv81, i16* %num88, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.else79, %if.then67
  %67 = load i32, i32* %px.addr, align 4
  %endx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 8
  %68 = load i32, i32* %endx, align 4
  %cmp90 = icmp eq i32 %67, %68
  br i1 %cmp90, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %if.end89
  %69 = load i32, i32* %py.addr, align 4
  %endy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 9
  %70 = load i32, i32* %endy, align 8
  %cmp91 = icmp eq i32 %69, %70
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %land.lhs.true
  %flend = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 12
  store i8 1, i8* %flend, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then, %if.then92, %land.lhs.true, %if.end89
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN7way2obj12releaseboundEv(%class.way2obj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %i = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %curbound = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  %0 = load i32, i32* %curbound, align 8
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %elemqu, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %nonboundqu = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 6
  %2 = load i32, i32* %nonboundqu, align 4
  %add = add nsw i32 %2, 1
  %nonboundqu2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 6
  store i32 %add, i32* %nonboundqu2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %nonboundqu3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 6
  store i32 0, i32* %nonboundqu3, align 4
  %boundar4 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %curbound5 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  %3 = load i32, i32* %curbound5, align 8
  %idxprom6 = sext i32 %3 to i64
  %arrayidx7 = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar4, i64 0, i64 %idxprom6
  %elemqu8 = getelementptr inbounds %class.flexarray, %class.flexarray* %arrayidx7, i32 0, i32 1
  %4 = load i32, i32* %elemqu8, align 8
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %5, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %boundar10 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %curbound11 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  %6 = load i32, i32* %curbound11, align 8
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar10, i64 0, i64 %idxprom12
  %7 = load i32, i32* %i, align 4
  %call = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %arrayidx13, i32 %7)
  %x = getelementptr inbounds %struct.pointt, %struct.pointt* %call, i32 0, i32 0
  %8 = load i32, i32* %x, align 4
  %boundar14 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %curbound15 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  %9 = load i32, i32* %curbound15, align 8
  %idxprom16 = sext i32 %9 to i64
  %arrayidx17 = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar14, i64 0, i64 %idxprom16
  %10 = load i32, i32* %i, align 4
  %call18 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %arrayidx17, i32 %10)
  %y = getelementptr inbounds %struct.pointt, %struct.pointt* %call18, i32 0, i32 1
  %11 = load i32, i32* %y, align 4
  call void @_ZN7way2obj12releasepointEii(%class.way2obj* %this1, i32 %8, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %boundar19 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %curbound20 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  %13 = load i32, i32* %curbound20, align 8
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar19, i64 0, i64 %idxprom21
  call void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %arrayidx22)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj4fillEii(%class.way2obj* %this, i32 %startx, i32 %starty) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ref.tmp = alloca %struct.pointt, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  call void @_ZN9flexarrayI6pointtE5clearEv(%class.flexarray* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %3 = load i16, i16* %fillnum, align 8
  %inc2 = add i16 %3, 1
  store i16 %inc2, i16* %fillnum, align 8
  %fillnum3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %4 = load i16, i16* %fillnum3, align 8
  %conv = zext i16 %4 to i32
  %cmp4 = icmp eq i32 %conv, 65535
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %5 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %6 = bitcast %struct.waymapcellt* %5 to i8*
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %7 = load i32, i32* %mapsizex, align 8
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %8 = load i32, i32* %mapsizey, align 4
  %mul = mul nsw i32 %7, %8
  %conv5 = sext i32 %mul to i64
  %mul6 = mul i64 %conv5, 4
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %mul6, i32 2, i1 false)
  %fillnum7 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  store i16 1, i16* %fillnum7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %flend = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 12
  store i8 0, i8* %flend, align 4
  %nonboundqu = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 6
  store i32 0, i32* %nonboundqu, align 4
  %boundar8 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar8, i64 0, i64 0
  %9 = load i32, i32* %startx.addr, align 4
  %10 = load i32, i32* %starty.addr, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %9, i32 %10)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %arrayidx9, %struct.pointt* dereferenceable(8) %ref.tmp)
  %waymap10 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %11 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap10, align 8
  %12 = load i32, i32* %startx.addr, align 4
  %13 = load i32, i32* %starty.addr, align 4
  %mapsizex11 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %14 = load i32, i32* %mapsizex11, align 8
  %mul12 = mul nsw i32 %13, %14
  %add = add nsw i32 %12, %mul12
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %11, i64 %idxprom13
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx14, i32 0, i32 1
  store i16 0, i16* %num, align 2
  %curbound = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  store i32 0, i32* %curbound, align 8
  %filltact = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 7
  store i32 0, i32* %filltact, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %flend15 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 12
  %15 = load i8, i8* %flend15, align 4
  %tobool = trunc i8 %15 to i1
  %conv16 = zext i1 %tobool to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %nonboundqu18 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 6
  %16 = load i32, i32* %nonboundqu18, align 4
  %cmp19 = icmp slt i32 %16, 265
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %filltact20 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 7
  %18 = load i32, i32* %filltact20, align 8
  %rem = srem i32 %18, 256
  %curbound21 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 5
  store i32 %rem, i32* %curbound21, align 8
  call void @_ZN7way2obj12releaseboundEv(%class.way2obj* %this1)
  %filltact22 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 7
  %19 = load i32, i32* %filltact22, align 8
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %filltact22, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %flend24 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 12
  %20 = load i8, i8* %flend24, align 4
  %tobool25 = trunc i8 %20 to i1
  ret i1 %tobool25
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj11createwayarERP6pointtRi(%class.way2obj* %this, %struct.pointt** dereferenceable(8) %wayarp, i32* dereferenceable(4) %waylength) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.way2obj*, align 8
  %wayarp.addr = alloca %struct.pointt**, align 8
  %waylength.addr = alloca i32*, align 8
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %mx = alloca i32, align 4
  %my = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %mind = alloca i32, align 4
  %wayar = alloca %class.flexarray, align 8
  %flfinish = alloca i8, align 1
  %minpdist = alloca i32, align 4
  %curpdist = alloca i32, align 4
  %index = alloca i32, align 4
  %ref.tmp = alloca %struct.pointt, align 4
  %ref.tmp91 = alloca %struct.pointt, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store %struct.pointt** %wayarp, %struct.pointt*** %wayarp.addr, align 8
  store i32* %waylength, i32** %waylength.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  store i32 0, i32* %mx, align 4
  store i32 0, i32* %my, align 4
  store i8 0, i8* %flfinish, align 1
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %0 = load i32, i32* %mapsizex, align 8
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %wayar, i32 %0)
  %endx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 8
  %1 = load i32, i32* %endx, align 4
  %endy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 9
  %2 = load i32, i32* %endy, align 8
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp, i32 %1, i32 %2)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %wayar, %struct.pointt* dereferenceable(8) %ref.tmp)
  %3 = load i32*, i32** %waylength.addr, align 8
  store i32 1, i32* %3, align 4
  store i32 0, i32* %index, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end97, %entry
  %4 = load i8, i8* %flfinish, align 1
  %tobool = trunc i8 %4 to i1
  %conv = zext i1 %tobool to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %index, align 4
  %mapsizex2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %6 = load i32, i32* %mapsizex2, align 8
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %7 = load i32, i32* %mapsizey, align 4
  %mul = mul nsw i32 %6, %7
  %cmp3 = icmp slt i32 %5, %mul
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32*, i32** %waylength.addr, align 8
  %10 = load i32, i32* %9, align 4
  %sub = sub nsw i32 %10, 1
  %call = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %wayar, i32 %sub)
  %x4 = getelementptr inbounds %struct.pointt, %struct.pointt* %call, i32 0, i32 0
  %11 = load i32, i32* %x4, align 4
  %sub5 = sub nsw i32 %11, 1
  store i32 %sub5, i32* %x1, align 4
  %12 = load i32*, i32** %waylength.addr, align 8
  %13 = load i32, i32* %12, align 4
  %sub6 = sub nsw i32 %13, 1
  %call7 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %wayar, i32 %sub6)
  %y8 = getelementptr inbounds %struct.pointt, %struct.pointt* %call7, i32 0, i32 1
  %14 = load i32, i32* %y8, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %y1, align 4
  %15 = load i32*, i32** %waylength.addr, align 8
  %16 = load i32, i32* %15, align 4
  %sub10 = sub nsw i32 %16, 1
  %call11 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %wayar, i32 %sub10)
  %x12 = getelementptr inbounds %struct.pointt, %struct.pointt* %call11, i32 0, i32 0
  %17 = load i32, i32* %x12, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %x2, align 4
  %18 = load i32*, i32** %waylength.addr, align 8
  %19 = load i32, i32* %18, align 4
  %sub13 = sub nsw i32 %19, 1
  %call14 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %wayar, i32 %sub13)
  %y15 = getelementptr inbounds %struct.pointt, %struct.pointt* %call14, i32 0, i32 1
  %20 = load i32, i32* %y15, align 4
  %add16 = add nsw i32 %20, 1
  store i32 %add16, i32* %y2, align 4
  %21 = load i32, i32* %x1, align 4
  %cmp17 = icmp slt i32 %21, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %x1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %22 = load i32, i32* %y1, align 4
  %cmp18 = icmp slt i32 %22, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  store i32 0, i32* %y1, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  %23 = load i32, i32* %x2, align 4
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  %24 = load i32, i32* %mapmaxx, align 8
  %cmp21 = icmp sgt i32 %23, %24
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %mapmaxx23 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  %25 = load i32, i32* %mapmaxx23, align 8
  store i32 %25, i32* %x2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %26 = load i32, i32* %y2, align 4
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  %27 = load i32, i32* %mapmaxy, align 4
  %cmp25 = icmp sgt i32 %26, %27
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %mapmaxy27 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  %28 = load i32, i32* %mapmaxy27, align 4
  store i32 %28, i32* %y2, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  store i32 100000000, i32* %mind, align 4
  %29 = load i32, i32* %y1, align 4
  store i32 %29, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %if.end28
  %30 = load i32, i32* %y, align 4
  %31 = load i32, i32* %y2, align 4
  %cmp29 = icmp sle i32 %30, %31
  br i1 %cmp29, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %x1, align 4
  store i32 %32, i32* %x, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc, %for.body
  %33 = load i32, i32* %x, align 4
  %34 = load i32, i32* %x2, align 4
  %cmp31 = icmp sle i32 %33, %34
  br i1 %cmp31, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond30
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %35 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %mapsizex33 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %38 = load i32, i32* %mapsizex33, align 8
  %mul34 = mul nsw i32 %37, %38
  %add35 = add nsw i32 %36, %mul34
  %idxprom = sext i32 %add35 to i64
  %arrayidx = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %35, i64 %idxprom
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx, i32 0, i32 0
  %39 = load i16, i16* %fillnum, align 2
  %conv36 = zext i16 %39 to i32
  %fillnum37 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  %40 = load i16, i16* %fillnum37, align 8
  %conv38 = zext i16 %40 to i32
  %cmp39 = icmp eq i32 %conv36, %conv38
  br i1 %cmp39, label %if.then40, label %if.end85

if.then40:                                        ; preds = %for.body32
  %waymap41 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %41 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap41, align 8
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %y, align 4
  %mapsizex42 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %44 = load i32, i32* %mapsizex42, align 8
  %mul43 = mul nsw i32 %43, %44
  %add44 = add nsw i32 %42, %mul43
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %41, i64 %idxprom45
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx46, i32 0, i32 1
  %45 = load i16, i16* %num, align 2
  %conv47 = zext i16 %45 to i32
  %46 = load i32, i32* %mind, align 4
  %cmp48 = icmp slt i32 %conv47, %46
  br i1 %cmp48, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.then40
  %47 = load i32, i32* %x, align 4
  store i32 %47, i32* %mx, align 4
  %48 = load i32, i32* %y, align 4
  store i32 %48, i32* %my, align 4
  %waymap50 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %49 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap50, align 8
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %y, align 4
  %mapsizex51 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %52 = load i32, i32* %mapsizex51, align 8
  %mul52 = mul nsw i32 %51, %52
  %add53 = add nsw i32 %50, %mul52
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %49, i64 %idxprom54
  %num56 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx55, i32 0, i32 1
  %53 = load i16, i16* %num56, align 2
  %conv57 = zext i16 %53 to i32
  store i32 %conv57, i32* %mind, align 4
  br label %if.end84

if.else:                                          ; preds = %if.then40
  %waymap58 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %54 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap58, align 8
  %55 = load i32, i32* %x, align 4
  %56 = load i32, i32* %y, align 4
  %mapsizex59 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %57 = load i32, i32* %mapsizex59, align 8
  %mul60 = mul nsw i32 %56, %57
  %add61 = add nsw i32 %55, %mul60
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %54, i64 %idxprom62
  %num64 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx63, i32 0, i32 1
  %58 = load i16, i16* %num64, align 2
  %conv65 = zext i16 %58 to i32
  %59 = load i32, i32* %mind, align 4
  %cmp66 = icmp eq i32 %conv65, %59
  br i1 %cmp66, label %if.then67, label %if.end83

if.then67:                                        ; preds = %if.else
  %startx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 10
  %60 = load i32, i32* %startx, align 4
  %61 = load i32, i32* %mx, align 4
  %sub68 = sub nsw i32 %60, %61
  %call69 = call i32 @_Z3sqri(i32 %sub68)
  %starty = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 11
  %62 = load i32, i32* %starty, align 8
  %63 = load i32, i32* %my, align 4
  %sub70 = sub nsw i32 %62, %63
  %call71 = call i32 @_Z3sqri(i32 %sub70)
  %add72 = add nsw i32 %call69, %call71
  store i32 %add72, i32* %minpdist, align 4
  %startx73 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 10
  %64 = load i32, i32* %startx73, align 4
  %65 = load i32, i32* %x, align 4
  %sub74 = sub nsw i32 %64, %65
  %call75 = call i32 @_Z3sqri(i32 %sub74)
  %starty76 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 11
  %66 = load i32, i32* %starty76, align 8
  %67 = load i32, i32* %y, align 4
  %sub77 = sub nsw i32 %66, %67
  %call78 = call i32 @_Z3sqri(i32 %sub77)
  %add79 = add nsw i32 %call75, %call78
  store i32 %add79, i32* %curpdist, align 4
  %68 = load i32, i32* %curpdist, align 4
  %69 = load i32, i32* %minpdist, align 4
  %cmp80 = icmp slt i32 %68, %69
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then67
  %70 = load i32, i32* %x, align 4
  store i32 %70, i32* %mx, align 4
  %71 = load i32, i32* %y, align 4
  store i32 %71, i32* %my, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then67
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.else
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then49
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %for.body32
  br label %for.inc

for.inc:                                          ; preds = %if.end85
  %72 = load i32, i32* %x, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond30

for.end:                                          ; preds = %for.cond30
  br label %for.inc86

for.inc86:                                        ; preds = %for.end
  %73 = load i32, i32* %y, align 4
  %inc87 = add nsw i32 %73, 1
  store i32 %inc87, i32* %y, align 4
  br label %for.cond

for.end88:                                        ; preds = %for.cond
  %74 = load i32*, i32** %waylength.addr, align 8
  %75 = load i32, i32* %74, align 4
  %inc89 = add nsw i32 %75, 1
  store i32 %inc89, i32* %74, align 4
  %76 = load i32, i32* %index, align 4
  %inc90 = add nsw i32 %76, 1
  store i32 %inc90, i32* %index, align 4
  %77 = load i32, i32* %mx, align 4
  %78 = load i32, i32* %my, align 4
  call void @_ZN6pointtC2Eii(%struct.pointt* %ref.tmp91, i32 %77, i32 %78)
  call void @_ZN9flexarrayI6pointtE3addERKS0_(%class.flexarray* %wayar, %struct.pointt* dereferenceable(8) %ref.tmp91)
  %79 = load i32, i32* %mx, align 4
  %startx92 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 10
  %80 = load i32, i32* %startx92, align 4
  %cmp93 = icmp eq i32 %79, %80
  br i1 %cmp93, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %for.end88
  %81 = load i32, i32* %my, align 4
  %starty94 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 11
  %82 = load i32, i32* %starty94, align 8
  %cmp95 = icmp eq i32 %81, %82
  br i1 %cmp95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %land.lhs.true
  store i8 1, i8* %flfinish, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %land.lhs.true, %for.end88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %83 = load i8, i8* %flfinish, align 1
  %tobool98 = trunc i8 %83 to i1
  %conv99 = zext i1 %tobool98 to i32
  %cmp100 = icmp eq i32 %conv99, 0
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %while.end
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %wayar)
  %84 = load %struct.pointt**, %struct.pointt*** %wayarp.addr, align 8
  store %struct.pointt* null, %struct.pointt** %84, align 8
  %85 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %85, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end102:                                        ; preds = %while.end
  %elemqu = getelementptr inbounds %class.flexarray, %class.flexarray* %wayar, i32 0, i32 1
  %86 = load i32, i32* %elemqu, align 8
  %conv103 = sext i32 %86 to i64
  %mul104 = mul i64 %conv103, 8
  %call105 = call noalias i8* @malloc(i64 %mul104) #10
  %87 = bitcast i8* %call105 to %struct.pointt*
  %88 = load %struct.pointt**, %struct.pointt*** %wayarp.addr, align 8
  store %struct.pointt* %87, %struct.pointt** %88, align 8
  %elemqu106 = getelementptr inbounds %class.flexarray, %class.flexarray* %wayar, i32 0, i32 1
  %89 = load i32, i32* %elemqu106, align 8
  %sub107 = sub nsw i32 %89, 1
  store i32 %sub107, i32* %i, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc117, %if.end102
  %90 = load i32, i32* %i, align 4
  %cmp109 = icmp sge i32 %90, 0
  br i1 %cmp109, label %for.body110, label %for.end118

for.body110:                                      ; preds = %for.cond108
  %91 = load i32, i32* %i, align 4
  %call111 = call dereferenceable(8) %struct.pointt* @_ZN9flexarrayI6pointtEixEi(%class.flexarray* %wayar, i32 %91)
  %92 = load %struct.pointt**, %struct.pointt*** %wayarp.addr, align 8
  %93 = load %struct.pointt*, %struct.pointt** %92, align 8
  %elemqu112 = getelementptr inbounds %class.flexarray, %class.flexarray* %wayar, i32 0, i32 1
  %94 = load i32, i32* %elemqu112, align 8
  %sub113 = sub nsw i32 %94, 1
  %95 = load i32, i32* %i, align 4
  %sub114 = sub nsw i32 %sub113, %95
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds %struct.pointt, %struct.pointt* %93, i64 %idxprom115
  %96 = bitcast %struct.pointt* %arrayidx116 to i8*
  %97 = bitcast %struct.pointt* %call111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 8, i32 4, i1 false)
  br label %for.inc117

for.inc117:                                       ; preds = %for.body110
  %98 = load i32, i32* %i, align 4
  %dec = add nsw i32 %98, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond108

for.end118:                                       ; preds = %for.cond108
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %wayar)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end118, %if.then101
  %99 = load i1, i1* %retval, align 1
  ret i1 %99
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj9createwayEiiiiPhRP6pointtRi(%class.way2obj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy, i8* %movetimearp, %struct.pointt** dereferenceable(8) %wayar, i32* dereferenceable(4) %waylength) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.way2obj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %endx.addr = alloca i32, align 4
  %endy.addr = alloca i32, align 4
  %movetimearp.addr = alloca i8*, align 8
  %wayar.addr = alloca %struct.pointt**, align 8
  %waylength.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %endx, i32* %endx.addr, align 4
  store i32 %endy, i32* %endy.addr, align 4
  store i8* %movetimearp, i8** %movetimearp.addr, align 8
  store %struct.pointt** %wayar, %struct.pointt*** %wayar.addr, align 8
  store i32* %waylength, i32** %waylength.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %0 = load i32, i32* %startx.addr, align 4
  %startx2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 10
  store i32 %0, i32* %startx2, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %starty3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 11
  store i32 %1, i32* %starty3, align 8
  %2 = load i32, i32* %endx.addr, align 4
  %endx4 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 8
  store i32 %2, i32* %endx4, align 4
  %3 = load i32, i32* %endy.addr, align 4
  %endy5 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 9
  store i32 %3, i32* %endy5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %movetimearp.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %movetimear = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 3
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* %movetimear, i64 0, i64 %idxprom6
  store i8 %7, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %startx.addr, align 4
  %11 = load i32, i32* %endx.addr, align 4
  %cmp8 = icmp eq i32 %10, %11
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %12 = load i32, i32* %starty.addr, align 4
  %13 = load i32, i32* %endy.addr, align 4
  %cmp9 = icmp eq i32 %12, %13
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call noalias i8* @malloc(i64 8) #10
  %14 = bitcast i8* %call to %struct.pointt*
  %15 = load %struct.pointt**, %struct.pointt*** %wayar.addr, align 8
  store %struct.pointt* %14, %struct.pointt** %15, align 8
  %16 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %16, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.end
  %17 = load i32, i32* %startx.addr, align 4
  %18 = load i32, i32* %starty.addr, align 4
  %call10 = call zeroext i1 @_ZN7way2obj4fillEii(%class.way2obj* %this1, i32 %17, i32 %18)
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  %19 = load %struct.pointt**, %struct.pointt*** %wayar.addr, align 8
  store %struct.pointt* null, %struct.pointt** %19, align 8
  %20 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %20, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %if.end
  %21 = load %struct.pointt**, %struct.pointt*** %wayar.addr, align 8
  %22 = load i32*, i32** %waylength.addr, align 8
  %call13 = call zeroext i1 @_ZN7way2obj11createwayarERP6pointtRi(%class.way2obj* %this1, %struct.pointt** dereferenceable(8) %21, i32* dereferenceable(4) %22)
  br i1 %call13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  %23 = load %struct.pointt**, %struct.pointt*** %wayar.addr, align 8
  store %struct.pointt* null, %struct.pointt** %23, align 8
  %24 = load i32*, i32** %waylength.addr, align 8
  store i32 0, i32* %24, align 4
  store i1 false, i1* %retval, align 1
  br label %return

if.end15:                                         ; preds = %if.end12
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end15, %if.then14, %if.then11, %if.then
  %25 = load i1, i1* %retval, align 1
  ret i1 %25
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj7loadmapEPKc(%class.way2obj* %this, i8* %fn) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.way2obj*, align 8
  %fn.addr = alloca i8*, align 8
  %hf = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %hf, align 4
  %1 = load i32, i32* %hf, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hf, align 4
  %xRunion = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 15
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %xR1 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i32 0, i32 0
  %call2 = call i64 @read(i32 %2, i8* %xR1, i64 1)
  %3 = load i32, i32* %hf, align 4
  %xRunion3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 15
  %xRstruc4 = bitcast %union.anon* %xRunion3 to %struct.anon*
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc4, i32 0, i32 1
  %call5 = call i64 @read(i32 %3, i8* %xR2, i64 1)
  %4 = load i32, i32* %hf, align 4
  %xRunion6 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 15
  %xRstruc7 = bitcast %union.anon* %xRunion6 to %struct.anon*
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc7, i32 0, i32 2
  %call8 = call i64 @read(i32 %4, i8* %xR3, i64 1)
  %5 = load i32, i32* %hf, align 4
  %xRunion9 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 15
  %xRstruc10 = bitcast %union.anon* %xRunion9 to %struct.anon*
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc10, i32 0, i32 3
  %call11 = call i64 @read(i32 %5, i8* %xR4, i64 1)
  %6 = load i32, i32* %hf, align 4
  %yRunion = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 16
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %yR1 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i32 0, i32 0
  %call12 = call i64 @read(i32 %6, i8* %yR1, i64 1)
  %7 = load i32, i32* %hf, align 4
  %yRunion13 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 16
  %yRstruc14 = bitcast %union.anon* %yRunion13 to %struct.anon*
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc14, i32 0, i32 1
  %call15 = call i64 @read(i32 %7, i8* %yR2, i64 1)
  %8 = load i32, i32* %hf, align 4
  %yRunion16 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 16
  %yRstruc17 = bitcast %union.anon* %yRunion16 to %struct.anon*
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc17, i32 0, i32 2
  %call18 = call i64 @read(i32 %8, i8* %yR3, i64 1)
  %9 = load i32, i32* %hf, align 4
  %yRunion19 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 16
  %yRstruc20 = bitcast %union.anon* %yRunion19 to %struct.anon*
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc20, i32 0, i32 3
  %call21 = call i64 @read(i32 %9, i8* %yR4, i64 1)
  %xRunion22 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 15
  %xRmapsizex = bitcast %union.anon* %xRunion22 to i32*
  %10 = load i32, i32* %xRmapsizex, align 8
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  store i32 %10, i32* %mapsizex, align 8
  %yRunion23 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 16
  %yRmapsizey = bitcast %union.anon* %yRunion23 to i32*
  %11 = load i32, i32* %yRmapsizey, align 4
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  store i32 %11, i32* %mapsizey, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %12, 256
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %arrayidx, i32 128)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %mapsizex25 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %15 = load i32, i32* %mapsizex25, align 8
  %sub = sub nsw i32 %15, 1
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  store i32 %sub, i32* %mapmaxx, align 8
  %mapsizey26 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %16 = load i32, i32* %mapsizey26, align 4
  %sub27 = sub nsw i32 %16, 1
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  store i32 %sub27, i32* %mapmaxy, align 4
  %mapsizex28 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %17 = load i32, i32* %mapsizex28, align 8
  %mapsizey29 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %18 = load i32, i32* %mapsizey29, align 4
  %mul = mul nsw i32 %17, %18
  %conv = sext i32 %mul to i64
  %mul30 = mul i64 %conv, 4
  %call31 = call noalias i8* @malloc(i64 %mul30) #10
  %19 = bitcast i8* %call31 to %struct.waymapcellt*
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  store %struct.waymapcellt* %19, %struct.waymapcellt** %waymap, align 8
  %waymap32 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %20 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap32, align 8
  %21 = bitcast %struct.waymapcellt* %20 to i8*
  %mapsizex33 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %22 = load i32, i32* %mapsizex33, align 8
  %mapsizey34 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %23 = load i32, i32* %mapsizey34, align 4
  %mul35 = mul nsw i32 %22, %23
  %conv36 = sext i32 %mul35 to i64
  %mul37 = mul i64 %conv36, 4
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %mul37, i32 2, i1 false)
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  store i16 0, i16* %fillnum, align 8
  %mapsizex38 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %24 = load i32, i32* %mapsizex38, align 8
  %mapsizey39 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %25 = load i32, i32* %mapsizey39, align 4
  %mul40 = mul nsw i32 %24, %25
  %conv41 = sext i32 %mul40 to i64
  %mul42 = mul i64 %conv41, 1
  %call43 = call noalias i8* @malloc(i64 %mul42) #10
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  store i8* %call43, i8** %mapp, align 8
  %26 = load i32, i32* %hf, align 4
  %mapp44 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  %27 = load i8*, i8** %mapp44, align 8
  %mapsizex45 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %28 = load i32, i32* %mapsizex45, align 8
  %mapsizey46 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %29 = load i32, i32* %mapsizey46, align 4
  %mul47 = mul nsw i32 %28, %29
  %conv48 = sext i32 %mul47 to i64
  %mul49 = mul i64 %conv48, 1
  %call50 = call i64 @read(i32 %26, i8* %27, i64 %mul49)
  %30 = load i32, i32* %hf, align 4
  %call51 = call i32 @close(i32 %30)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load i1, i1* %retval, align 1
  ret i1 %31
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN7way2obj7initmapEii(%class.way2obj* %this, i32 %mapsizexin, i32 %mapsizeyin) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %mapsizexin.addr = alloca i32, align 4
  %mapsizeyin.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  store i32 %mapsizexin, i32* %mapsizexin.addr, align 4
  store i32 %mapsizeyin, i32* %mapsizeyin.addr, align 4
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %0 = load i32, i32* %mapsizexin.addr, align 4
  %mapsizex = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  store i32 %0, i32* %mapsizex, align 8
  %1 = load i32, i32* %mapsizeyin.addr, align 4
  %mapsizey = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  store i32 %1, i32* %mapsizey, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  call void @_ZN9flexarrayI6pointtE6createEi(%class.flexarray* %arrayidx, i32 128)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %mapsizex2 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %5 = load i32, i32* %mapsizex2, align 8
  %sub = sub nsw i32 %5, 1
  %mapmaxx = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 13
  store i32 %sub, i32* %mapmaxx, align 8
  %mapsizey3 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %6 = load i32, i32* %mapsizey3, align 4
  %sub4 = sub nsw i32 %6, 1
  %mapmaxy = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 14
  store i32 %sub4, i32* %mapmaxy, align 4
  %mapsizex5 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %7 = load i32, i32* %mapsizex5, align 8
  %mapsizey6 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %8 = load i32, i32* %mapsizey6, align 4
  %mul = mul nsw i32 %7, %8
  %conv = sext i32 %mul to i64
  %mul7 = mul i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %mul7) #10
  %9 = bitcast i8* %call to %struct.waymapcellt*
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  store %struct.waymapcellt* %9, %struct.waymapcellt** %waymap, align 8
  %waymap8 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %10 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap8, align 8
  %11 = bitcast %struct.waymapcellt* %10 to i8*
  %mapsizex9 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %12 = load i32, i32* %mapsizex9, align 8
  %mapsizey10 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %13 = load i32, i32* %mapsizey10, align 4
  %mul11 = mul nsw i32 %12, %13
  %conv12 = sext i32 %mul11 to i64
  %mul13 = mul i64 %conv12, 4
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 %mul13, i32 2, i1 false)
  %fillnum = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 2
  store i16 0, i16* %fillnum, align 8
  %mapsizex14 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 17
  %14 = load i32, i32* %mapsizex14, align 8
  %mapsizey15 = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 18
  %15 = load i32, i32* %mapsizey15, align 4
  %mul16 = mul nsw i32 %14, %15
  %conv17 = sext i32 %mul16 to i64
  %mul18 = mul i64 %conv17, 1
  %call19 = call noalias i8* @malloc(i64 %mul18) #10
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  store i8* %call19, i8** %mapp, align 8
  ret i1 true
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN7way2obj6createEv(%class.way2obj* %this) #2 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  store %struct.waymapcellt* null, %struct.waymapcellt** %waymap, align 8
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  store i8* null, i8** %mapp, align 8
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN7way2obj7destroyEv(%class.way2obj* %this) #0 align 2 {
entry:
  %this.addr = alloca %class.way2obj*, align 8
  %i = alloca i32, align 4
  store %class.way2obj* %this, %class.way2obj** %this.addr, align 8
  %this1 = load %class.way2obj*, %class.way2obj** %this.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %boundar = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 4
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x %class.flexarray], [256 x %class.flexarray]* %boundar, i64 0, i64 %idxprom
  call void @_ZN9flexarrayI6pointtE7destroyEv(%class.flexarray* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %mapp = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 0
  %3 = load i8*, i8** %mapp, align 8
  call void @free(i8* %3) #10
  %waymap = getelementptr inbounds %class.way2obj, %class.way2obj* %this1, i32 0, i32 1
  %4 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %5 = bitcast %struct.waymapcellt* %4 to i8*
  call void @free(i8* %5) #10
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6wayobj9addsphereERK8rvectortf(%class.wayobj* %this, %class.rvectort* dereferenceable(12) %centerp, float %radius) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %centerp.addr = alloca %class.rvectort*, align 8
  %radius.addr = alloca float, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %rx = alloca float, align 4
  %ry = alloca float, align 4
  %d2 = alloca float, align 4
  %radius2 = alloca float, align 4
  %rr = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store %class.rvectort* %centerp, %class.rvectort** %centerp.addr, align 8
  store float %radius, float* %radius.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y3 = getelementptr inbounds %class.rvectort, %class.rvectort* %0, i32 0, i32 1
  %1 = load float, float* %y3, align 4
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height2 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 7
  %2 = load float, float* %height2, align 4
  %cmp = fcmp oge float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, float* %radius.addr, align 4
  %4 = load float, float* %radius.addr, align 4
  %mul = fmul float %3, %4
  %5 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y4 = getelementptr inbounds %class.rvectort, %class.rvectort* %5, i32 0, i32 1
  %6 = load float, float* %y4, align 4
  %info5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height26 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info5, i32 0, i32 7
  %7 = load float, float* %height26, align 4
  %sub = fsub float %6, %7
  %call = call float @_Z3sqrf(float %sub)
  %sub7 = fsub float %mul, %call
  store float %sub7, float* %d2, align 4
  %8 = load float, float* %d2, align 4
  %cmp8 = fcmp ole float %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  br label %for.end127

if.end:                                           ; preds = %if.then
  %9 = load float, float* %d2, align 4
  %call10 = call float @_ZSt4sqrtf(float %9)
  store float %call10, float* %radius.addr, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %10 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y11 = getelementptr inbounds %class.rvectort, %class.rvectort* %10, i32 0, i32 1
  %11 = load float, float* %y11, align 4
  %info12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height1 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info12, i32 0, i32 6
  %12 = load float, float* %height1, align 8
  %cmp13 = fcmp ole float %11, %12
  br i1 %cmp13, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.else
  %13 = load float, float* %radius.addr, align 4
  %14 = load float, float* %radius.addr, align 4
  %mul15 = fmul float %13, %14
  %info16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height117 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info16, i32 0, i32 6
  %15 = load float, float* %height117, align 8
  %16 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y18 = getelementptr inbounds %class.rvectort, %class.rvectort* %16, i32 0, i32 1
  %17 = load float, float* %y18, align 4
  %sub19 = fsub float %15, %17
  %call20 = call float @_Z3sqrf(float %sub19)
  %sub21 = fsub float %mul15, %call20
  store float %sub21, float* %d2, align 4
  %18 = load float, float* %d2, align 4
  %cmp22 = fcmp ole float %18, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then14
  br label %for.end127

if.end24:                                         ; preds = %if.then14
  %19 = load float, float* %d2, align 4
  %call25 = call float @_ZSt4sqrtf(float %19)
  store float %call25, float* %radius.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %20 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x28 = getelementptr inbounds %class.rvectort, %class.rvectort* %20, i32 0, i32 0
  %21 = load float, float* %x28, align 4
  %22 = load float, float* %radius.addr, align 4
  %sub29 = fsub float %21, %22
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %23 = load float, float* %cellr, align 4
  %sub30 = fsub float %sub29, %23
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  %24 = load float, float* %xcoef1, align 4
  %mul31 = fmul float %sub30, %24
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  %25 = load float, float* %xcoef2, align 8
  %add = fadd float %mul31, %25
  %conv = fptosi float %add to i32
  store i32 %conv, i32* %x1, align 4
  %26 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %26, i32 0, i32 2
  %27 = load float, float* %z, align 4
  %28 = load float, float* %radius.addr, align 4
  %sub32 = fsub float %27, %28
  %cellr33 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %29 = load float, float* %cellr33, align 4
  %sub34 = fsub float %sub32, %29
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  %30 = load float, float* %ycoef1, align 4
  %mul35 = fmul float %sub34, %30
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  %31 = load float, float* %ycoef2, align 8
  %add36 = fadd float %mul35, %31
  %conv37 = fptosi float %add36 to i32
  store i32 %conv37, i32* %y1, align 4
  %32 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x38 = getelementptr inbounds %class.rvectort, %class.rvectort* %32, i32 0, i32 0
  %33 = load float, float* %x38, align 4
  %34 = load float, float* %radius.addr, align 4
  %add39 = fadd float %33, %34
  %cellr40 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %35 = load float, float* %cellr40, align 4
  %add41 = fadd float %add39, %35
  %xcoef142 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  %36 = load float, float* %xcoef142, align 4
  %mul43 = fmul float %add41, %36
  %xcoef244 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  %37 = load float, float* %xcoef244, align 8
  %add45 = fadd float %mul43, %37
  %conv46 = fptosi float %add45 to i32
  store i32 %conv46, i32* %x2, align 4
  %38 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z47 = getelementptr inbounds %class.rvectort, %class.rvectort* %38, i32 0, i32 2
  %39 = load float, float* %z47, align 4
  %40 = load float, float* %radius.addr, align 4
  %add48 = fadd float %39, %40
  %cellr49 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %41 = load float, float* %cellr49, align 4
  %add50 = fadd float %add48, %41
  %ycoef151 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  %42 = load float, float* %ycoef151, align 4
  %mul52 = fmul float %add50, %42
  %ycoef253 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  %43 = load float, float* %ycoef253, align 8
  %add54 = fadd float %mul52, %43
  %conv55 = fptosi float %add54 to i32
  store i32 %conv55, i32* %y2, align 4
  %44 = load i32, i32* %x1, align 4
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %45 = load i32, i32* %mapmaxx1, align 4
  %cmp56 = icmp sgt i32 %44, %45
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end27
  br label %for.end127

if.end58:                                         ; preds = %if.end27
  %46 = load i32, i32* %y1, align 4
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %47 = load i32, i32* %mapmaxy1, align 8
  %cmp59 = icmp sgt i32 %46, %47
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  br label %for.end127

if.end61:                                         ; preds = %if.end58
  %48 = load i32, i32* %x2, align 4
  %cmp62 = icmp slt i32 %48, 1
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end61
  br label %for.end127

if.end64:                                         ; preds = %if.end61
  %49 = load i32, i32* %y2, align 4
  %cmp65 = icmp slt i32 %49, 1
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  br label %for.end127

if.end67:                                         ; preds = %if.end64
  %50 = load i32, i32* %x1, align 4
  %cmp68 = icmp slt i32 %50, 1
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  store i32 1, i32* %x1, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  %51 = load i32, i32* %y1, align 4
  %cmp71 = icmp slt i32 %51, 1
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  store i32 1, i32* %y1, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  %52 = load i32, i32* %x2, align 4
  %mapmaxx174 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %53 = load i32, i32* %mapmaxx174, align 4
  %cmp75 = icmp sgt i32 %52, %53
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %mapmaxx177 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %54 = load i32, i32* %mapmaxx177, align 4
  store i32 %54, i32* %x2, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end73
  %55 = load i32, i32* %y2, align 4
  %mapmaxy179 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %56 = load i32, i32* %mapmaxy179, align 8
  %cmp80 = icmp sgt i32 %55, %56
  br i1 %cmp80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end78
  %mapmaxy182 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %57 = load i32, i32* %mapmaxy182, align 8
  store i32 %57, i32* %y2, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end78
  %58 = load float, float* %radius.addr, align 4
  %cellr84 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %59 = load float, float* %cellr84, align 4
  %add85 = fadd float %58, %59
  %call86 = call float @_Z3sqrf(float %add85)
  store float %call86, float* %radius2, align 4
  %60 = load i32, i32* %y1, align 4
  store i32 %60, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc125, %if.end83
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %y2, align 4
  %cmp87 = icmp sle i32 %61, %62
  br i1 %cmp87, label %for.body, label %for.end127

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %x1, align 4
  store i32 %63, i32* %x, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc, %for.body
  %64 = load i32, i32* %x, align 4
  %65 = load i32, i32* %x2, align 4
  %cmp89 = icmp sle i32 %64, %65
  br i1 %cmp89, label %for.body90, label %for.end

for.body90:                                       ; preds = %for.cond88
  %info91 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info91, i32 0, i32 0
  %66 = load float, float* %minx, align 8
  %cellr92 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %67 = load float, float* %cellr92, align 4
  %add93 = fadd float %66, %67
  %68 = load i32, i32* %x, align 4
  %conv94 = sitofp i32 %68 to float
  %info95 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info95, i32 0, i32 1
  %69 = load float, float* %maxx, align 4
  %info96 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx97 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info96, i32 0, i32 0
  %70 = load float, float* %minx97, align 8
  %sub98 = fsub float %69, %70
  %mul99 = fmul float %conv94, %sub98
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %71 = load i32, i32* %maplx, align 4
  %conv100 = sitofp i32 %71 to float
  %div = fdiv float %mul99, %conv100
  %add101 = fadd float %add93, %div
  store float %add101, float* %rx, align 4
  %info102 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info102, i32 0, i32 2
  %72 = load float, float* %miny, align 8
  %cellr103 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %73 = load float, float* %cellr103, align 4
  %add104 = fadd float %72, %73
  %74 = load i32, i32* %y, align 4
  %conv105 = sitofp i32 %74 to float
  %info106 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info106, i32 0, i32 3
  %75 = load float, float* %maxy, align 4
  %info107 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny108 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info107, i32 0, i32 2
  %76 = load float, float* %miny108, align 8
  %sub109 = fsub float %75, %76
  %mul110 = fmul float %conv105, %sub109
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %77 = load i32, i32* %maply, align 8
  %conv111 = sitofp i32 %77 to float
  %div112 = fdiv float %mul110, %conv111
  %add113 = fadd float %add104, %div112
  store float %add113, float* %ry, align 4
  %78 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x114 = getelementptr inbounds %class.rvectort, %class.rvectort* %78, i32 0, i32 0
  %79 = load float, float* %x114, align 4
  %80 = load float, float* %rx, align 4
  %sub115 = fsub float %79, %80
  %call116 = call float @_Z3sqrf(float %sub115)
  %81 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z117 = getelementptr inbounds %class.rvectort, %class.rvectort* %81, i32 0, i32 2
  %82 = load float, float* %z117, align 4
  %83 = load float, float* %ry, align 4
  %sub118 = fsub float %82, %83
  %call119 = call float @_Z3sqrf(float %sub118)
  %add120 = fadd float %call116, %call119
  store float %add120, float* %rr, align 4
  %84 = load float, float* %rr, align 4
  %85 = load float, float* %radius2, align 4
  %cmp121 = fcmp olt float %84, %85
  br i1 %cmp121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.body90
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %86 = load i16*, i16** %maparp, align 8
  %87 = load i32, i32* %y, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %88 = load i32, i32* %shift, align 8
  %shl = shl i32 %87, %88
  %89 = load i32, i32* %x, align 4
  %or = or i32 %shl, %89
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %86, i64 %idxprom
  %90 = load i16, i16* %arrayidx, align 2
  %inc = add i16 %90, 1
  store i16 %inc, i16* %arrayidx, align 2
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %for.body90
  br label %for.inc

for.inc:                                          ; preds = %if.end123
  %91 = load i32, i32* %x, align 4
  %inc124 = add nsw i32 %91, 1
  store i32 %inc124, i32* %x, align 4
  br label %for.cond88

for.end:                                          ; preds = %for.cond88
  br label %for.inc125

for.inc125:                                       ; preds = %for.end
  %92 = load i32, i32* %y, align 4
  %inc126 = add nsw i32 %92, 1
  store i32 %inc126, i32* %y, align 4
  br label %for.cond

for.end127:                                       ; preds = %if.then9, %if.then23, %if.then57, %if.then60, %if.then63, %if.then66, %for.cond
  ret void
}

; Function Attrs: noinline uwtable
define void @_ZN6wayobj12removesphereERK8rvectortf(%class.wayobj* %this, %class.rvectort* dereferenceable(12) %centerp, float %radius) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %centerp.addr = alloca %class.rvectort*, align 8
  %radius.addr = alloca float, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %rx = alloca float, align 4
  %ry = alloca float, align 4
  %d2 = alloca float, align 4
  %radius2 = alloca float, align 4
  %rr = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store %class.rvectort* %centerp, %class.rvectort** %centerp.addr, align 8
  store float %radius, float* %radius.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y3 = getelementptr inbounds %class.rvectort, %class.rvectort* %0, i32 0, i32 1
  %1 = load float, float* %y3, align 4
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height2 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 7
  %2 = load float, float* %height2, align 4
  %cmp = fcmp oge float %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load float, float* %radius.addr, align 4
  %4 = load float, float* %radius.addr, align 4
  %mul = fmul float %3, %4
  %5 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y4 = getelementptr inbounds %class.rvectort, %class.rvectort* %5, i32 0, i32 1
  %6 = load float, float* %y4, align 4
  %info5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height26 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info5, i32 0, i32 7
  %7 = load float, float* %height26, align 4
  %sub = fsub float %6, %7
  %call = call float @_Z3sqrf(float %sub)
  %sub7 = fsub float %mul, %call
  store float %sub7, float* %d2, align 4
  %8 = load float, float* %d2, align 4
  %cmp8 = fcmp ole float %8, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  br label %for.end126

if.end:                                           ; preds = %if.then
  %9 = load float, float* %d2, align 4
  %call10 = call float @_ZSt4sqrtf(float %9)
  store float %call10, float* %radius.addr, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %10 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y11 = getelementptr inbounds %class.rvectort, %class.rvectort* %10, i32 0, i32 1
  %11 = load float, float* %y11, align 4
  %info12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height1 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info12, i32 0, i32 6
  %12 = load float, float* %height1, align 8
  %cmp13 = fcmp ole float %11, %12
  br i1 %cmp13, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.else
  %13 = load float, float* %radius.addr, align 4
  %14 = load float, float* %radius.addr, align 4
  %mul15 = fmul float %13, %14
  %info16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %height117 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info16, i32 0, i32 6
  %15 = load float, float* %height117, align 8
  %16 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %y18 = getelementptr inbounds %class.rvectort, %class.rvectort* %16, i32 0, i32 1
  %17 = load float, float* %y18, align 4
  %sub19 = fsub float %15, %17
  %call20 = call float @_Z3sqrf(float %sub19)
  %sub21 = fsub float %mul15, %call20
  store float %sub21, float* %d2, align 4
  %18 = load float, float* %d2, align 4
  %cmp22 = fcmp ole float %18, 0.000000e+00
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then14
  br label %for.end126

if.end24:                                         ; preds = %if.then14
  %19 = load float, float* %d2, align 4
  %call25 = call float @_ZSt4sqrtf(float %19)
  store float %call25, float* %radius.addr, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  %20 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x28 = getelementptr inbounds %class.rvectort, %class.rvectort* %20, i32 0, i32 0
  %21 = load float, float* %x28, align 4
  %22 = load float, float* %radius.addr, align 4
  %sub29 = fsub float %21, %22
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %23 = load float, float* %cellr, align 4
  %sub30 = fsub float %sub29, %23
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  %24 = load float, float* %xcoef1, align 4
  %mul31 = fmul float %sub30, %24
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  %25 = load float, float* %xcoef2, align 8
  %add = fadd float %mul31, %25
  %conv = fptosi float %add to i32
  store i32 %conv, i32* %x1, align 4
  %26 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %26, i32 0, i32 2
  %27 = load float, float* %z, align 4
  %28 = load float, float* %radius.addr, align 4
  %sub32 = fsub float %27, %28
  %cellr33 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %29 = load float, float* %cellr33, align 4
  %sub34 = fsub float %sub32, %29
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  %30 = load float, float* %ycoef1, align 4
  %mul35 = fmul float %sub34, %30
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  %31 = load float, float* %ycoef2, align 8
  %add36 = fadd float %mul35, %31
  %conv37 = fptosi float %add36 to i32
  store i32 %conv37, i32* %y1, align 4
  %32 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x38 = getelementptr inbounds %class.rvectort, %class.rvectort* %32, i32 0, i32 0
  %33 = load float, float* %x38, align 4
  %34 = load float, float* %radius.addr, align 4
  %add39 = fadd float %33, %34
  %cellr40 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %35 = load float, float* %cellr40, align 4
  %add41 = fadd float %add39, %35
  %xcoef142 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  %36 = load float, float* %xcoef142, align 4
  %mul43 = fmul float %add41, %36
  %xcoef244 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  %37 = load float, float* %xcoef244, align 8
  %add45 = fadd float %mul43, %37
  %conv46 = fptosi float %add45 to i32
  store i32 %conv46, i32* %x2, align 4
  %38 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z47 = getelementptr inbounds %class.rvectort, %class.rvectort* %38, i32 0, i32 2
  %39 = load float, float* %z47, align 4
  %40 = load float, float* %radius.addr, align 4
  %add48 = fadd float %39, %40
  %cellr49 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %41 = load float, float* %cellr49, align 4
  %add50 = fadd float %add48, %41
  %ycoef151 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  %42 = load float, float* %ycoef151, align 4
  %mul52 = fmul float %add50, %42
  %ycoef253 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  %43 = load float, float* %ycoef253, align 8
  %add54 = fadd float %mul52, %43
  %conv55 = fptosi float %add54 to i32
  store i32 %conv55, i32* %y2, align 4
  %44 = load i32, i32* %x1, align 4
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %45 = load i32, i32* %mapmaxx1, align 4
  %cmp56 = icmp sgt i32 %44, %45
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end27
  br label %for.end126

if.end58:                                         ; preds = %if.end27
  %46 = load i32, i32* %y1, align 4
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %47 = load i32, i32* %mapmaxy1, align 8
  %cmp59 = icmp sgt i32 %46, %47
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  br label %for.end126

if.end61:                                         ; preds = %if.end58
  %48 = load i32, i32* %x2, align 4
  %cmp62 = icmp slt i32 %48, 1
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end61
  br label %for.end126

if.end64:                                         ; preds = %if.end61
  %49 = load i32, i32* %y2, align 4
  %cmp65 = icmp slt i32 %49, 1
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  br label %for.end126

if.end67:                                         ; preds = %if.end64
  %50 = load i32, i32* %x1, align 4
  %cmp68 = icmp slt i32 %50, 1
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  store i32 1, i32* %x1, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  %51 = load i32, i32* %y1, align 4
  %cmp71 = icmp slt i32 %51, 1
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  store i32 1, i32* %y1, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  %52 = load i32, i32* %x2, align 4
  %mapmaxx174 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %53 = load i32, i32* %mapmaxx174, align 4
  %cmp75 = icmp sgt i32 %52, %53
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end73
  %mapmaxx177 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %54 = load i32, i32* %mapmaxx177, align 4
  store i32 %54, i32* %x2, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end73
  %55 = load i32, i32* %y2, align 4
  %mapmaxy179 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %56 = load i32, i32* %mapmaxy179, align 8
  %cmp80 = icmp sgt i32 %55, %56
  br i1 %cmp80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %if.end78
  %mapmaxy182 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %57 = load i32, i32* %mapmaxy182, align 8
  store i32 %57, i32* %y2, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end78
  %58 = load float, float* %radius.addr, align 4
  %cellr84 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %59 = load float, float* %cellr84, align 4
  %add85 = fadd float %58, %59
  %call86 = call float @_Z3sqrf(float %add85)
  store float %call86, float* %radius2, align 4
  %60 = load i32, i32* %y1, align 4
  store i32 %60, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc124, %if.end83
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %y2, align 4
  %cmp87 = icmp sle i32 %61, %62
  br i1 %cmp87, label %for.body, label %for.end126

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %x1, align 4
  store i32 %63, i32* %x, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc, %for.body
  %64 = load i32, i32* %x, align 4
  %65 = load i32, i32* %x2, align 4
  %cmp89 = icmp sle i32 %64, %65
  br i1 %cmp89, label %for.body90, label %for.end

for.body90:                                       ; preds = %for.cond88
  %info91 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info91, i32 0, i32 0
  %66 = load float, float* %minx, align 8
  %cellr92 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %67 = load float, float* %cellr92, align 4
  %add93 = fadd float %66, %67
  %68 = load i32, i32* %x, align 4
  %conv94 = sitofp i32 %68 to float
  %info95 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info95, i32 0, i32 1
  %69 = load float, float* %maxx, align 4
  %info96 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx97 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info96, i32 0, i32 0
  %70 = load float, float* %minx97, align 8
  %sub98 = fsub float %69, %70
  %mul99 = fmul float %conv94, %sub98
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %71 = load i32, i32* %maplx, align 4
  %conv100 = sitofp i32 %71 to float
  %div = fdiv float %mul99, %conv100
  %add101 = fadd float %add93, %div
  store float %add101, float* %rx, align 4
  %info102 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info102, i32 0, i32 2
  %72 = load float, float* %miny, align 8
  %cellr103 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %73 = load float, float* %cellr103, align 4
  %add104 = fadd float %72, %73
  %74 = load i32, i32* %y, align 4
  %conv105 = sitofp i32 %74 to float
  %info106 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info106, i32 0, i32 3
  %75 = load float, float* %maxy, align 4
  %info107 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny108 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info107, i32 0, i32 2
  %76 = load float, float* %miny108, align 8
  %sub109 = fsub float %75, %76
  %mul110 = fmul float %conv105, %sub109
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %77 = load i32, i32* %maply, align 8
  %conv111 = sitofp i32 %77 to float
  %div112 = fdiv float %mul110, %conv111
  %add113 = fadd float %add104, %div112
  store float %add113, float* %ry, align 4
  %78 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %x114 = getelementptr inbounds %class.rvectort, %class.rvectort* %78, i32 0, i32 0
  %79 = load float, float* %x114, align 4
  %80 = load float, float* %rx, align 4
  %sub115 = fsub float %79, %80
  %call116 = call float @_Z3sqrf(float %sub115)
  %81 = load %class.rvectort*, %class.rvectort** %centerp.addr, align 8
  %z117 = getelementptr inbounds %class.rvectort, %class.rvectort* %81, i32 0, i32 2
  %82 = load float, float* %z117, align 4
  %83 = load float, float* %ry, align 4
  %sub118 = fsub float %82, %83
  %call119 = call float @_Z3sqrf(float %sub118)
  %add120 = fadd float %call116, %call119
  store float %add120, float* %rr, align 4
  %84 = load float, float* %rr, align 4
  %85 = load float, float* %radius2, align 4
  %cmp121 = fcmp ogt float %84, %85
  br i1 %cmp121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.body90
  br label %for.inc

if.end123:                                        ; preds = %for.body90
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %86 = load i16*, i16** %maparp, align 8
  %87 = load i32, i32* %y, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %88 = load i32, i32* %shift, align 8
  %shl = shl i32 %87, %88
  %89 = load i32, i32* %x, align 4
  %or = or i32 %shl, %89
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %86, i64 %idxprom
  %90 = load i16, i16* %arrayidx, align 2
  %dec = add i16 %90, -1
  store i16 %dec, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end123, %if.then122
  %91 = load i32, i32* %x, align 4
  %inc = add nsw i32 %91, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond88

for.end:                                          ; preds = %for.cond88
  br label %for.inc124

for.inc124:                                       ; preds = %for.end
  %92 = load i32, i32* %y, align 4
  %inc125 = add nsw i32 %92, 1
  store i32 %inc125, i32* %y, align 4
  br label %for.cond

for.end126:                                       ; preds = %if.then9, %if.then23, %if.then57, %if.then60, %if.then63, %if.then66, %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN6wayobj8addpointEii(%class.wayobj* %this, i32 %x, i32 %y) #2 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %0 = load i16*, i16** %maparp, align 8
  %1 = load i32, i32* %y.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %2 = load i32, i32* %shift, align 8
  %shl = shl i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %or = or i32 %shl, %3
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %maparp2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %5 = load i16*, i16** %maparp2, align 8
  %6 = load i32, i32* %y.addr, align 4
  %shift3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %7 = load i32, i32* %shift3, align 8
  %shl4 = shl i32 %6, %7
  %8 = load i32, i32* %x.addr, align 4
  %or5 = or i32 %shl4, %8
  %idxprom6 = sext i32 %or5 to i64
  %arrayidx7 = getelementptr inbounds i16, i16* %5, i64 %idxprom6
  %9 = load i16, i16* %arrayidx7, align 2
  %inc = add i16 %9, 1
  store i16 %inc, i16* %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN6wayobj11removepointEii(%class.wayobj* %this, i32 %x, i32 %y) #2 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %0 = load i16*, i16** %maparp, align 8
  %1 = load i32, i32* %y.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %2 = load i32, i32* %shift, align 8
  %shl = shl i32 %1, %2
  %3 = load i32, i32* %x.addr, align 4
  %or = or i32 %shl, %3
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %maparp2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %5 = load i16*, i16** %maparp2, align 8
  %6 = load i32, i32* %y.addr, align 4
  %shift3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %7 = load i32, i32* %shift3, align 8
  %shl4 = shl i32 %6, %7
  %8 = load i32, i32* %x.addr, align 4
  %or5 = or i32 %shl4, %8
  %idxprom6 = sext i32 %or5 to i64
  %arrayidx7 = getelementptr inbounds i16, i16* %5, i64 %idxprom6
  %9 = load i16, i16* %arrayidx7, align 2
  %dec = add i16 %9, -1
  store i16 %dec, i16* %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN6wayobj5clearEv(%class.wayobj* %this) #2 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %size = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %0 = load i32, i32* %mapxshift, align 8
  %shl = shl i32 1, %0
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %1 = load i32, i32* %mapyshift, align 4
  %shl2 = shl i32 %shl, %1
  store i32 %shl2, i32* %size, align 4
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %2 = load i16*, i16** %maparp, align 8
  %3 = bitcast i16* %2 to i8*
  %4 = load i32, i32* %size, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %mul, i32 2, i1 false)
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %5 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %6 = bitcast %struct.waymapcellt* %5 to i8*
  %7 = load i32, i32* %size, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = mul i64 %conv3, 4
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %mul4, i32 2, i1 false)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %y, align 4
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %9 = load i32, i32* %maply, align 8
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %maparp5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %10 = load i16*, i16** %maparp5, align 8
  %11 = load i32, i32* %y, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %12 = load i32, i32* %shift, align 8
  %shl6 = shl i32 %11, %12
  %idxprom = sext i32 %shl6 to i64
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  store i16 -1, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %y, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.end
  %14 = load i32, i32* %y, align 4
  %maply8 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %15 = load i32, i32* %maply8, align 8
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body10, label %for.end18

for.body10:                                       ; preds = %for.cond7
  %maparp11 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %16 = load i16*, i16** %maparp11, align 8
  %17 = load i32, i32* %y, align 4
  %shift12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %18 = load i32, i32* %shift12, align 8
  %shl13 = shl i32 %17, %18
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 3
  %19 = load i32, i32* %mapmaxx, align 4
  %or = or i32 %shl13, %19
  %idxprom14 = sext i32 %or to i64
  %arrayidx15 = getelementptr inbounds i16, i16* %16, i64 %idxprom14
  store i16 -1, i16* %arrayidx15, align 2
  br label %for.inc16

for.inc16:                                        ; preds = %for.body10
  %20 = load i32, i32* %y, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %y, align 4
  br label %for.cond7

for.end18:                                        ; preds = %for.cond7
  store i32 0, i32* %x, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc28, %for.end18
  %21 = load i32, i32* %x, align 4
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %22 = load i32, i32* %maplx, align 4
  %cmp20 = icmp slt i32 %21, %22
  br i1 %cmp20, label %for.body21, label %for.end30

for.body21:                                       ; preds = %for.cond19
  %maparp22 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %23 = load i16*, i16** %maparp22, align 8
  %shift23 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %24 = load i32, i32* %shift23, align 8
  %shl24 = shl i32 0, %24
  %25 = load i32, i32* %x, align 4
  %or25 = or i32 %shl24, %25
  %idxprom26 = sext i32 %or25 to i64
  %arrayidx27 = getelementptr inbounds i16, i16* %23, i64 %idxprom26
  store i16 -1, i16* %arrayidx27, align 2
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %26 = load i32, i32* %x, align 4
  %inc29 = add nsw i32 %26, 1
  store i32 %inc29, i32* %x, align 4
  br label %for.cond19

for.end30:                                        ; preds = %for.cond19
  store i32 0, i32* %x, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc41, %for.end30
  %27 = load i32, i32* %x, align 4
  %maplx32 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %28 = load i32, i32* %maplx32, align 4
  %cmp33 = icmp slt i32 %27, %28
  br i1 %cmp33, label %for.body34, label %for.end43

for.body34:                                       ; preds = %for.cond31
  %maparp35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %29 = load i16*, i16** %maparp35, align 8
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 4
  %30 = load i32, i32* %mapmaxy, align 8
  %shift36 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %31 = load i32, i32* %shift36, align 8
  %shl37 = shl i32 %30, %31
  %32 = load i32, i32* %x, align 4
  %or38 = or i32 %shl37, %32
  %idxprom39 = sext i32 %or38 to i64
  %arrayidx40 = getelementptr inbounds i16, i16* %29, i64 %idxprom39
  store i16 -1, i16* %arrayidx40, align 2
  br label %for.inc41

for.inc41:                                        ; preds = %for.body34
  %33 = load i32, i32* %x, align 4
  %inc42 = add nsw i32 %33, 1
  store i32 %inc42, i32* %x, align 4
  br label %for.cond31

for.end43:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj7loadmapEPKc(%class.wayobj* %this, i8* %fn) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %fn.addr = alloca i8*, align 8
  %hf = alloca i32, align 4
  %xRunion = alloca %union.anon, align 4
  %yRunion = alloca %union.anon, align 4
  %mapsizex = alloca i32, align 4
  %mapsizey = alloca i32, align 4
  %info = alloca %struct.createwaymnginfot, align 4
  %mapp = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %agg.tmp = alloca %struct.createwaymnginfot, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 0)
  store i32 %call, i32* %hf, align 4
  %1 = load i32, i32* %hf, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %hf, align 4
  %xRstruc = bitcast %union.anon* %xRunion to %struct.anon*
  %xR1 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc, i32 0, i32 0
  %call2 = call i64 @read(i32 %2, i8* %xR1, i64 1)
  %3 = load i32, i32* %hf, align 4
  %xRstruc3 = bitcast %union.anon* %xRunion to %struct.anon*
  %xR2 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc3, i32 0, i32 1
  %call4 = call i64 @read(i32 %3, i8* %xR2, i64 1)
  %4 = load i32, i32* %hf, align 4
  %xRstruc5 = bitcast %union.anon* %xRunion to %struct.anon*
  %xR3 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc5, i32 0, i32 2
  %call6 = call i64 @read(i32 %4, i8* %xR3, i64 1)
  %5 = load i32, i32* %hf, align 4
  %xRstruc7 = bitcast %union.anon* %xRunion to %struct.anon*
  %xR4 = getelementptr inbounds %struct.anon, %struct.anon* %xRstruc7, i32 0, i32 3
  %call8 = call i64 @read(i32 %5, i8* %xR4, i64 1)
  %6 = load i32, i32* %hf, align 4
  %yRstruc = bitcast %union.anon* %yRunion to %struct.anon*
  %yR1 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc, i32 0, i32 0
  %call9 = call i64 @read(i32 %6, i8* %yR1, i64 1)
  %7 = load i32, i32* %hf, align 4
  %yRstruc10 = bitcast %union.anon* %yRunion to %struct.anon*
  %yR2 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc10, i32 0, i32 1
  %call11 = call i64 @read(i32 %7, i8* %yR2, i64 1)
  %8 = load i32, i32* %hf, align 4
  %yRstruc12 = bitcast %union.anon* %yRunion to %struct.anon*
  %yR3 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc12, i32 0, i32 2
  %call13 = call i64 @read(i32 %8, i8* %yR3, i64 1)
  %9 = load i32, i32* %hf, align 4
  %yRstruc14 = bitcast %union.anon* %yRunion to %struct.anon*
  %yR4 = getelementptr inbounds %struct.anon, %struct.anon* %yRstruc14, i32 0, i32 3
  %call15 = call i64 @read(i32 %9, i8* %yR4, i64 1)
  %xRmapsizex = bitcast %union.anon* %xRunion to i32*
  %10 = load i32, i32* %xRmapsizex, align 4
  store i32 %10, i32* %mapsizex, align 4
  %yRmapsizey = bitcast %union.anon* %yRunion to i32*
  %11 = load i32, i32* %yRmapsizey, align 4
  store i32 %11, i32* %mapsizey, align 4
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  store float -1.000000e+03, float* %minx, align 4
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  store float -1.000000e+03, float* %miny, align 4
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 1
  store float 1.000000e+03, float* %maxx, align 4
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  store float 1.000000e+03, float* %maxy, align 4
  %12 = load i32, i32* %mapsizex, align 4
  %conv = sitofp i32 %12 to double
  %call16 = call double @log(double %conv) #10
  %call17 = call double @log(double 2.000000e+00) #10
  %div = fdiv double %call16, %call17
  %add = fadd double %div, 5.000000e-01
  %conv18 = fptosi double %add to i32
  %xshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 4
  store i32 %conv18, i32* %xshift, align 4
  %13 = load i32, i32* %mapsizey, align 4
  %conv19 = sitofp i32 %13 to double
  %call20 = call double @log(double %conv19) #10
  %call21 = call double @log(double 2.000000e+00) #10
  %div22 = fdiv double %call20, %call21
  %add23 = fadd double %div22, 5.000000e-01
  %conv24 = fptosi double %add23 to i32
  %yshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 5
  store i32 %conv24, i32* %yshift, align 4
  %height1 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 6
  store float 0.000000e+00, float* %height1, align 4
  %height2 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 7
  store float 1.000000e+05, float* %height2, align 4
  %14 = bitcast %struct.createwaymnginfot* %agg.tmp to i8*
  %15 = bitcast %struct.createwaymnginfot* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 4, i1 false)
  call void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this1, %struct.createwaymnginfot* byval align 8 %agg.tmp)
  %16 = load i32, i32* %mapsizex, align 4
  %17 = load i32, i32* %mapsizey, align 4
  %mul = mul nsw i32 %16, %17
  %conv25 = sext i32 %mul to i64
  %mul26 = mul i64 %conv25, 1
  %call27 = call noalias i8* @malloc(i64 %mul26) #10
  store i8* %call27, i8** %mapp, align 8
  %18 = load i32, i32* %hf, align 4
  %19 = load i8*, i8** %mapp, align 8
  %20 = load i32, i32* %mapsizex, align 4
  %21 = load i32, i32* %mapsizey, align 4
  %mul28 = mul nsw i32 %20, %21
  %conv29 = sext i32 %mul28 to i64
  %mul30 = mul i64 %conv29, 1
  %call31 = call i64 @read(i32 %18, i8* %19, i64 %mul30)
  store i32 1, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %if.end
  %22 = load i32, i32* %y, align 4
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 4
  %23 = load i32, i32* %mapmaxy, align 8
  %cmp32 = icmp slt i32 %22, %23
  br i1 %cmp32, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %x, align 4
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 3
  %25 = load i32, i32* %mapmaxx, align 4
  %cmp34 = icmp slt i32 %24, %25
  br i1 %cmp34, label %for.body35, label %for.end

for.body35:                                       ; preds = %for.cond33
  %26 = load i8*, i8** %mapp, align 8
  %27 = load i32, i32* %y, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %28 = load i32, i32* %shift, align 8
  %shl = shl i32 %27, %28
  %29 = load i32, i32* %x, align 4
  %or = or i32 %shl, %29
  %idxprom = sext i32 %or to i64
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %30 = load i8, i8* %arrayidx, align 1
  %conv36 = zext i8 %30 to i16
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %31 = load i16*, i16** %maparp, align 8
  %32 = load i32, i32* %y, align 4
  %shift37 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %33 = load i32, i32* %shift37, align 8
  %shl38 = shl i32 %32, %33
  %34 = load i32, i32* %x, align 4
  %or39 = or i32 %shl38, %34
  %idxprom40 = sext i32 %or39 to i64
  %arrayidx41 = getelementptr inbounds i16, i16* %31, i64 %idxprom40
  store i16 %conv36, i16* %arrayidx41, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body35
  %35 = load i32, i32* %x, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond33

for.end:                                          ; preds = %for.cond33
  br label %for.inc42

for.inc42:                                        ; preds = %for.end
  %36 = load i32, i32* %y, align 4
  %inc43 = add nsw i32 %36, 1
  store i32 %inc43, i32* %y, align 4
  br label %for.cond

for.end44:                                        ; preds = %for.cond
  %37 = load i8*, i8** %mapp, align 8
  call void @free(i8* %37) #10
  %38 = load i32, i32* %hf, align 4
  %call45 = call i32 @close(i32 %38)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end44, %if.then
  %39 = load i1, i1* %retval, align 1
  ret i1 %39
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: noinline uwtable
define void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this, %struct.createwaymnginfot* byval align 8 %info) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %size = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %info2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %0 = bitcast %struct.createwaymnginfot* %info2 to i8*
  %1 = bitcast %struct.createwaymnginfot* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 4, i1 false)
  %xshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 4
  %2 = load i32, i32* %xshift, align 8
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  store i32 %2, i32* %mapxshift, align 8
  %yshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 5
  %3 = load i32, i32* %yshift, align 4
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  store i32 %3, i32* %mapyshift, align 4
  %xshift3 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 4
  %4 = load i32, i32* %xshift3, align 8
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  store i32 %4, i32* %shift, align 8
  %mapxshift4 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %5 = load i32, i32* %mapxshift4, align 8
  %shl = shl i32 1, %5
  %sub = sub nsw i32 %shl, 1
  %mapmaxx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 3
  store i32 %sub, i32* %mapmaxx, align 4
  %mapyshift5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %6 = load i32, i32* %mapyshift5, align 4
  %shl6 = shl i32 1, %6
  %sub7 = sub nsw i32 %shl6, 1
  %mapmaxy = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 4
  store i32 %sub7, i32* %mapmaxy, align 8
  %mapmaxx8 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 3
  %7 = load i32, i32* %mapmaxx8, align 4
  %sub9 = sub nsw i32 %7, 1
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  store i32 %sub9, i32* %mapmaxx1, align 4
  %mapmaxy10 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 4
  %8 = load i32, i32* %mapmaxy10, align 8
  %sub11 = sub nsw i32 %8, 1
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  store i32 %sub11, i32* %mapmaxy1, align 8
  %mapxshift12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %9 = load i32, i32* %mapxshift12, align 8
  %shl13 = shl i32 1, %9
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  store i32 %shl13, i32* %maplx, align 4
  %mapyshift14 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %10 = load i32, i32* %mapyshift14, align 4
  %shl15 = shl i32 1, %10
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  store i32 %shl15, i32* %maply, align 8
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 1
  %11 = load float, float* %maxx, align 4
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %12 = load float, float* %minx, align 8
  %sub16 = fsub float %11, %12
  %maplx17 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %13 = load i32, i32* %maplx17, align 4
  %mul = mul nsw i32 2, %13
  %conv = sitofp i32 %mul to float
  %div = fdiv float %sub16, %conv
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  store float %div, float* %cellr, align 4
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  %14 = load float, float* %maxy, align 4
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %15 = load float, float* %miny, align 8
  %sub18 = fsub float %14, %15
  %maply19 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %16 = load i32, i32* %maply19, align 8
  %mul20 = mul nsw i32 2, %16
  %conv21 = sitofp i32 %mul20 to float
  %div22 = fdiv float %sub18, %conv21
  %cellr23 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %17 = load float, float* %cellr23, align 4
  %cmp = fcmp ogt float %div22, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %maxy24 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  %18 = load float, float* %maxy24, align 4
  %miny25 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %19 = load float, float* %miny25, align 8
  %sub26 = fsub float %18, %19
  %maply27 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %20 = load i32, i32* %maply27, align 8
  %mul28 = mul nsw i32 2, %20
  %conv29 = sitofp i32 %mul28 to float
  %div30 = fdiv float %sub26, %conv29
  %cellr31 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  store float %div30, float* %cellr31, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %maplx32 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %21 = load i32, i32* %maplx32, align 4
  %conv33 = sitofp i32 %21 to float
  %maxx34 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 1
  %22 = load float, float* %maxx34, align 4
  %minx35 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %23 = load float, float* %minx35, align 8
  %sub36 = fsub float %22, %23
  %div37 = fdiv float %conv33, %sub36
  %xcoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 9
  store float %div37, float* %xcoef1, align 4
  %maplx38 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %24 = load i32, i32* %maplx38, align 4
  %sub39 = sub nsw i32 0, %24
  %conv40 = sitofp i32 %sub39 to float
  %minx41 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %25 = load float, float* %minx41, align 8
  %mul42 = fmul float %conv40, %25
  %maxx43 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 1
  %26 = load float, float* %maxx43, align 4
  %minx44 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %27 = load float, float* %minx44, align 8
  %sub45 = fsub float %26, %27
  %div46 = fdiv float %mul42, %sub45
  %xcoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 10
  store float %div46, float* %xcoef2, align 8
  %maply47 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %28 = load i32, i32* %maply47, align 8
  %conv48 = sitofp i32 %28 to float
  %maxy49 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  %29 = load float, float* %maxy49, align 4
  %miny50 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %30 = load float, float* %miny50, align 8
  %sub51 = fsub float %29, %30
  %div52 = fdiv float %conv48, %sub51
  %ycoef1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 11
  store float %div52, float* %ycoef1, align 4
  %maply53 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %31 = load i32, i32* %maply53, align 8
  %sub54 = sub nsw i32 0, %31
  %conv55 = sitofp i32 %sub54 to float
  %miny56 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %32 = load float, float* %miny56, align 8
  %mul57 = fmul float %conv55, %32
  %maxy58 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  %33 = load float, float* %maxy58, align 4
  %miny59 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %34 = load float, float* %miny59, align 8
  %sub60 = fsub float %33, %34
  %div61 = fdiv float %mul57, %sub60
  %ycoef2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 12
  store float %div61, float* %ycoef2, align 8
  %mapxshift62 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %35 = load i32, i32* %mapxshift62, align 8
  %shl63 = shl i32 1, %35
  %mapyshift64 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %36 = load i32, i32* %mapyshift64, align 4
  %shl65 = shl i32 %shl63, %36
  store i32 %shl65, i32* %size, align 4
  %37 = load i32, i32* %size, align 4
  %38 = sext i32 %37 to i64
  %39 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %38, i64 2)
  %40 = extractvalue { i64, i1 } %39, 1
  %41 = extractvalue { i64, i1 } %39, 0
  %42 = select i1 %40, i64 -1, i64 %41
  %call = call i8* @_Znam(i64 %42) #11
  %43 = bitcast i8* %call to i16*
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  store i16* %43, i16** %maparp, align 8
  %44 = load i32, i32* %size, align 4
  %45 = sext i32 %44 to i64
  %46 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %45, i64 4)
  %47 = extractvalue { i64, i1 } %46, 1
  %48 = extractvalue { i64, i1 } %46, 0
  %49 = select i1 %47, i64 -1, i64 %48
  %call66 = call i8* @_Znam(i64 %49) #11
  %50 = bitcast i8* %call66 to %struct.waymapcellt*
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  store %struct.waymapcellt* %50, %struct.waymapcellt** %waymap, align 8
  call void @_ZN6wayobj5clearEv(%class.wayobj* %this1)
  %maplx67 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %51 = load i32, i32* %maplx67, align 4
  %mul68 = mul nsw i32 2, %51
  %maply69 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %52 = load i32, i32* %maply69, align 8
  %mul70 = mul nsw i32 2, %52
  %add = add nsw i32 %mul68, %mul70
  %mul71 = mul nsw i32 6, %add
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  store i32 %mul71, i32* %maxboundlength, align 8
  %maxboundlength72 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %53 = load i32, i32* %maxboundlength72, align 8
  %54 = sext i32 %53 to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %54, i64 4)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %call73 = call i8* @_Znam(i64 %58) #11
  %59 = bitcast i8* %call73 to i32*
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  store i32* %59, i32** %bound1p, align 8
  %maxboundlength74 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %60 = load i32, i32* %maxboundlength74, align 8
  %61 = sext i32 %60 to i64
  %62 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %61, i64 4)
  %63 = extractvalue { i64, i1 } %62, 1
  %64 = extractvalue { i64, i1 } %62, 0
  %65 = select i1 %63, i64 -1, i64 %64
  %call75 = call i8* @_Znam(i64 %65) #11
  %66 = bitcast i8* %call75 to i32*
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  store i32* %66, i32** %bound2p, align 8
  %shift76 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %67 = load i32, i32* %shift76, align 8
  %shl77 = shl i32 1, %67
  %sub78 = sub nsw i32 %shl77, 1
  %indexxmask = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 22
  store i32 %sub78, i32* %indexxmask, align 4
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  store i16 0, i16* %fillnum, align 2
  ret void
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj7initmapEii(%class.wayobj* %this, i32 %mapsizex, i32 %mapsizey) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %mapsizex.addr = alloca i32, align 4
  %mapsizey.addr = alloca i32, align 4
  %info = alloca %struct.createwaymnginfot, align 4
  %agg.tmp = alloca %struct.createwaymnginfot, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %mapsizex, i32* %mapsizex.addr, align 4
  store i32 %mapsizey, i32* %mapsizey.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  store float -1.000000e+03, float* %minx, align 4
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  store float -1.000000e+03, float* %miny, align 4
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 1
  store float 1.000000e+03, float* %maxx, align 4
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 3
  store float 1.000000e+03, float* %maxy, align 4
  %0 = load i32, i32* %mapsizex.addr, align 4
  %conv = sitofp i32 %0 to double
  %call = call double @log(double %conv) #10
  %call2 = call double @log(double 2.000000e+00) #10
  %div = fdiv double %call, %call2
  %add = fadd double %div, 5.000000e-01
  %conv3 = fptosi double %add to i32
  %xshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 4
  store i32 %conv3, i32* %xshift, align 4
  %1 = load i32, i32* %mapsizey.addr, align 4
  %conv4 = sitofp i32 %1 to double
  %call5 = call double @log(double %conv4) #10
  %call6 = call double @log(double 2.000000e+00) #10
  %div7 = fdiv double %call5, %call6
  %add8 = fadd double %div7, 5.000000e-01
  %conv9 = fptosi double %add8 to i32
  %yshift = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 5
  store i32 %conv9, i32* %yshift, align 4
  %height1 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 6
  store float 0.000000e+00, float* %height1, align 4
  %height2 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 7
  store float 1.000000e+05, float* %height2, align 4
  %2 = bitcast %struct.createwaymnginfot* %agg.tmp to i8*
  %3 = bitcast %struct.createwaymnginfot* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 4, i1 false)
  call void @_ZN6wayobj6createE17createwaymnginfot(%class.wayobj* %this1, %struct.createwaymnginfot* byval align 8 %agg.tmp)
  ret i1 true
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN6wayobj6createEv(%class.wayobj* %this) #2 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_ZN6wayobj7destroyEv(%class.wayobj* %this) #2 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  %0 = load i32*, i32** %bound2p, align 8
  %isnull = icmp eq i32* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @_ZdaPv(i8* %1) #12
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %2 = load i32*, i32** %bound1p, align 8
  %isnull2 = icmp eq i32* %2, null
  br i1 %isnull2, label %delete.end4, label %delete.notnull3

delete.notnull3:                                  ; preds = %delete.end
  %3 = bitcast i32* %2 to i8*
  call void @_ZdaPv(i8* %3) #12
  br label %delete.end4

delete.end4:                                      ; preds = %delete.notnull3, %delete.end
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %4 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %isnull5 = icmp eq %struct.waymapcellt* %4, null
  br i1 %isnull5, label %delete.end7, label %delete.notnull6

delete.notnull6:                                  ; preds = %delete.end4
  %5 = bitcast %struct.waymapcellt* %4 to i8*
  call void @_ZdaPv(i8* %5) #12
  br label %delete.end7

delete.end7:                                      ; preds = %delete.notnull6, %delete.end4
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %6 = load i16*, i16** %maparp, align 8
  %isnull8 = icmp eq i16* %6, null
  br i1 %isnull8, label %delete.end10, label %delete.notnull9

delete.notnull9:                                  ; preds = %delete.end7
  %7 = bitcast i16* %6 to i8*
  call void @_ZdaPv(i8* %7) #12
  br label %delete.end10

delete.end10:                                     ; preds = %delete.notnull9, %delete.end7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this, i32 %x, i32 %y) #2 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %x.addr, align 4
  %mapmaxx1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 5
  %3 = load i32, i32* %mapmaxx1, align 4
  %cmp5 = icmp sgt i32 %2, %3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i1 false, i1* %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.end4
  %4 = load i32, i32* %y.addr, align 4
  %mapmaxy1 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 6
  %5 = load i32, i32* %mapmaxy1, align 8
  %cmp8 = icmp sgt i32 %4, %5
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i1 false, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %if.end7
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then6, %if.then3, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj10ismoveableEff(%class.wayobj* %this, float %x, float %y) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca float, align 4
  %y.addr = alloca float, align 4
  %mapx = alloca i32, align 4
  %mapy = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store float %x, float* %x.addr, align 4
  store float %y, float* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load float, float* %x.addr, align 4
  %call = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %this1, float %0)
  store i32 %call, i32* %mapx, align 4
  %1 = load float, float* %y.addr, align 4
  %call2 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %this1, float %1)
  store i32 %call2, i32* %mapy, align 4
  %2 = load i32, i32* %mapx, align 4
  %3 = load i32, i32* %mapy, align 4
  %call3 = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %2, i32 %3)
  br i1 %call3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %mapx, align 4
  %5 = load i32, i32* %mapy, align 4
  %call4 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %4, i32 %5)
  %6 = load i16, i16* %call4, align 2
  %tobool = icmp ne i16 %6, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %7 = load i1, i1* %retval, align 1
  ret i1 %7
}

; Function Attrs: noinline uwtable
define { <2 x float>, float } @_ZN6wayobj8getpointEi(%class.wayobj* %this, i32 %index) #0 align 2 {
entry:
  %retval = alloca %class.rvectort, align 4
  %this.addr = alloca %class.wayobj*, align 8
  %index.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca { <2 x float>, float }, align 8
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  call void @_ZN8rvectortC2Ev(%class.rvectort* %retval)
  %0 = load i32, i32* %index.addr, align 4
  %indexxmask = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 22
  %1 = load i32, i32* %indexxmask, align 4
  %and = and i32 %0, %1
  store i32 %and, i32* %x, align 4
  %2 = load i32, i32* %index.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %3 = load i32, i32* %shift, align 8
  %shr = ashr i32 %2, %3
  store i32 %shr, i32* %y, align 4
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %4 = load float, float* %minx, align 8
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %5 = load float, float* %cellr, align 4
  %add = fadd float %4, %5
  %6 = load i32, i32* %x, align 4
  %conv = sitofp i32 %6 to float
  %info2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info2, i32 0, i32 1
  %7 = load float, float* %maxx, align 4
  %info3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx4 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info3, i32 0, i32 0
  %8 = load float, float* %minx4, align 8
  %sub = fsub float %7, %8
  %mul = fmul float %conv, %sub
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %9 = load i32, i32* %maplx, align 4
  %conv5 = sitofp i32 %9 to float
  %div = fdiv float %mul, %conv5
  %add6 = fadd float %add, %div
  %x7 = getelementptr inbounds %class.rvectort, %class.rvectort* %retval, i32 0, i32 0
  store float %add6, float* %x7, align 4
  %y8 = getelementptr inbounds %class.rvectort, %class.rvectort* %retval, i32 0, i32 1
  store float 0.000000e+00, float* %y8, align 4
  %info9 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info9, i32 0, i32 2
  %10 = load float, float* %miny, align 8
  %cellr10 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %11 = load float, float* %cellr10, align 4
  %add11 = fadd float %10, %11
  %12 = load i32, i32* %y, align 4
  %conv12 = sitofp i32 %12 to float
  %info13 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info13, i32 0, i32 3
  %13 = load float, float* %maxy, align 4
  %info14 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny15 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info14, i32 0, i32 2
  %14 = load float, float* %miny15, align 8
  %sub16 = fsub float %13, %14
  %mul17 = fmul float %conv12, %sub16
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %15 = load i32, i32* %maply, align 8
  %conv18 = sitofp i32 %15 to float
  %div19 = fdiv float %mul17, %conv18
  %add20 = fadd float %add11, %div19
  %z = getelementptr inbounds %class.rvectort, %class.rvectort* %retval, i32 0, i32 2
  store float %add20, float* %z, align 4
  %16 = bitcast { <2 x float>, float }* %tmp to i8*
  %17 = bitcast %class.rvectort* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 12, i32 4, i1 false)
  %18 = load { <2 x float>, float }, { <2 x float>, float }* %tmp, align 8
  ret { <2 x float>, float } %18
}

; Function Attrs: noinline nounwind uwtable
define i32 @_ZN6wayobj10makebound2EPiiS0_(%class.wayobj* %this, i32* %bound1p, i32 %bound1l, i32* %bound2p) #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.wayobj*, align 8
  %bound1p.addr = alloca i32*, align 8
  %bound1l.addr = alloca i32, align 4
  %bound2p.addr = alloca i32*, align 8
  %bound2l = alloca i32, align 4
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %waymap = alloca %struct.waymapcellt*, align 8
  %i = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32* %bound1p, i32** %bound1p.addr, align 8
  store i32 %bound1l, i32* %bound1l.addr, align 4
  store i32* %bound2p, i32** %bound2p.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %0 = load i32, i32* %maply, align 8
  store i32 %0, i32* %yoffset, align 4
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %1 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8
  store %struct.waymapcellt* %1, %struct.waymapcellt** %waymap, align 8
  store i32 0, i32* %bound2l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %bound1l.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %bound1p.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %8 = load i32, i32* %yoffset, align 4
  %sub = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub, 1
  store i32 %sub3, i32* %index1, align 4
  %9 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %10 = load i32, i32* %index1, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom4
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx5, i32 0, i32 0
  %11 = load i16, i16* %fillnum, align 2
  %conv = zext i16 %11 to i32
  %fillnum6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %12 = load i16, i16* %fillnum6, align 2
  %conv7 = zext i16 %12 to i32
  %cmp8 = icmp ne i32 %conv, %conv7
  br i1 %cmp8, label %if.then, label %if.end25

if.then:                                          ; preds = %for.body
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %13 = load i16*, i16** %maparp, align 8
  %14 = load i32, i32* %index1, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  %15 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then13, label %if.end24

if.then13:                                        ; preds = %if.then
  %16 = load i32, i32* %index1, align 4
  %17 = load i32*, i32** %bound2p.addr, align 8
  %18 = load i32, i32* %bound2l, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  store i32 %16, i32* %arrayidx15, align 4
  %19 = load i32, i32* %bound2l, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %bound2l, align 4
  %fillnum16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %20 = load i16, i16* %fillnum16, align 2
  %21 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %22 = load i32, i32* %index1, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %21, i64 %idxprom17
  %fillnum19 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx18, i32 0, i32 0
  store i16 %20, i16* %fillnum19, align 2
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %23 = load i16, i16* %step, align 8
  %24 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %25 = load i32, i32* %index1, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %24, i64 %idxprom20
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx21, i32 0, i32 1
  store i16 %23, i16* %num, align 2
  %26 = load i32, i32* %index1, align 4
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %27 = load i32, i32* %endindex, align 4
  %cmp22 = icmp eq i32 %26, %27
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then13
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend, align 8
  %28 = load i32, i32* %bound2l, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then13
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.body
  %29 = load i32, i32* %index, align 4
  %30 = load i32, i32* %yoffset, align 4
  %sub26 = sub nsw i32 %29, %30
  store i32 %sub26, i32* %index1, align 4
  %31 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %32 = load i32, i32* %index1, align 4
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %31, i64 %idxprom27
  %fillnum29 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx28, i32 0, i32 0
  %33 = load i16, i16* %fillnum29, align 2
  %conv30 = zext i16 %33 to i32
  %fillnum31 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %34 = load i16, i16* %fillnum31, align 2
  %conv32 = zext i16 %34 to i32
  %cmp33 = icmp ne i32 %conv30, %conv32
  br i1 %cmp33, label %if.then34, label %if.end58

if.then34:                                        ; preds = %if.end25
  %maparp35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %35 = load i16*, i16** %maparp35, align 8
  %36 = load i32, i32* %index1, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds i16, i16* %35, i64 %idxprom36
  %37 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %37 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then40, label %if.end57

if.then40:                                        ; preds = %if.then34
  %38 = load i32, i32* %index1, align 4
  %39 = load i32*, i32** %bound2p.addr, align 8
  %40 = load i32, i32* %bound2l, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %39, i64 %idxprom41
  store i32 %38, i32* %arrayidx42, align 4
  %41 = load i32, i32* %bound2l, align 4
  %inc43 = add nsw i32 %41, 1
  store i32 %inc43, i32* %bound2l, align 4
  %fillnum44 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %42 = load i16, i16* %fillnum44, align 2
  %43 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %44 = load i32, i32* %index1, align 4
  %idxprom45 = sext i32 %44 to i64
  %arrayidx46 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %43, i64 %idxprom45
  %fillnum47 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx46, i32 0, i32 0
  store i16 %42, i16* %fillnum47, align 2
  %step48 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %45 = load i16, i16* %step48, align 8
  %46 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %47 = load i32, i32* %index1, align 4
  %idxprom49 = sext i32 %47 to i64
  %arrayidx50 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %46, i64 %idxprom49
  %num51 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx50, i32 0, i32 1
  store i16 %45, i16* %num51, align 2
  %48 = load i32, i32* %index1, align 4
  %endindex52 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %49 = load i32, i32* %endindex52, align 4
  %cmp53 = icmp eq i32 %48, %49
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.then40
  %flend55 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend55, align 8
  %50 = load i32, i32* %bound2l, align 4
  store i32 %50, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.then40
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then34
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end25
  %51 = load i32, i32* %index, align 4
  %52 = load i32, i32* %yoffset, align 4
  %sub59 = sub nsw i32 %51, %52
  %add = add nsw i32 %sub59, 1
  store i32 %add, i32* %index1, align 4
  %53 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %54 = load i32, i32* %index1, align 4
  %idxprom60 = sext i32 %54 to i64
  %arrayidx61 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %53, i64 %idxprom60
  %fillnum62 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx61, i32 0, i32 0
  %55 = load i16, i16* %fillnum62, align 2
  %conv63 = zext i16 %55 to i32
  %fillnum64 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %56 = load i16, i16* %fillnum64, align 2
  %conv65 = zext i16 %56 to i32
  %cmp66 = icmp ne i32 %conv63, %conv65
  br i1 %cmp66, label %if.then67, label %if.end91

if.then67:                                        ; preds = %if.end58
  %maparp68 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %57 = load i16*, i16** %maparp68, align 8
  %58 = load i32, i32* %index1, align 4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds i16, i16* %57, i64 %idxprom69
  %59 = load i16, i16* %arrayidx70, align 2
  %conv71 = sext i16 %59 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then73, label %if.end90

if.then73:                                        ; preds = %if.then67
  %60 = load i32, i32* %index1, align 4
  %61 = load i32*, i32** %bound2p.addr, align 8
  %62 = load i32, i32* %bound2l, align 4
  %idxprom74 = sext i32 %62 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %61, i64 %idxprom74
  store i32 %60, i32* %arrayidx75, align 4
  %63 = load i32, i32* %bound2l, align 4
  %inc76 = add nsw i32 %63, 1
  store i32 %inc76, i32* %bound2l, align 4
  %fillnum77 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %64 = load i16, i16* %fillnum77, align 2
  %65 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %66 = load i32, i32* %index1, align 4
  %idxprom78 = sext i32 %66 to i64
  %arrayidx79 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %65, i64 %idxprom78
  %fillnum80 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx79, i32 0, i32 0
  store i16 %64, i16* %fillnum80, align 2
  %step81 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %67 = load i16, i16* %step81, align 8
  %68 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %69 = load i32, i32* %index1, align 4
  %idxprom82 = sext i32 %69 to i64
  %arrayidx83 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %68, i64 %idxprom82
  %num84 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx83, i32 0, i32 1
  store i16 %67, i16* %num84, align 2
  %70 = load i32, i32* %index1, align 4
  %endindex85 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %71 = load i32, i32* %endindex85, align 4
  %cmp86 = icmp eq i32 %70, %71
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then73
  %flend88 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend88, align 8
  %72 = load i32, i32* %bound2l, align 4
  store i32 %72, i32* %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.then73
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then67
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end58
  %73 = load i32, i32* %index, align 4
  %sub92 = sub nsw i32 %73, 1
  store i32 %sub92, i32* %index1, align 4
  %74 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %75 = load i32, i32* %index1, align 4
  %idxprom93 = sext i32 %75 to i64
  %arrayidx94 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %74, i64 %idxprom93
  %fillnum95 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx94, i32 0, i32 0
  %76 = load i16, i16* %fillnum95, align 2
  %conv96 = zext i16 %76 to i32
  %fillnum97 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %77 = load i16, i16* %fillnum97, align 2
  %conv98 = zext i16 %77 to i32
  %cmp99 = icmp ne i32 %conv96, %conv98
  br i1 %cmp99, label %if.then100, label %if.end124

if.then100:                                       ; preds = %if.end91
  %maparp101 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %78 = load i16*, i16** %maparp101, align 8
  %79 = load i32, i32* %index1, align 4
  %idxprom102 = sext i32 %79 to i64
  %arrayidx103 = getelementptr inbounds i16, i16* %78, i64 %idxprom102
  %80 = load i16, i16* %arrayidx103, align 2
  %conv104 = sext i16 %80 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then106, label %if.end123

if.then106:                                       ; preds = %if.then100
  %81 = load i32, i32* %index1, align 4
  %82 = load i32*, i32** %bound2p.addr, align 8
  %83 = load i32, i32* %bound2l, align 4
  %idxprom107 = sext i32 %83 to i64
  %arrayidx108 = getelementptr inbounds i32, i32* %82, i64 %idxprom107
  store i32 %81, i32* %arrayidx108, align 4
  %84 = load i32, i32* %bound2l, align 4
  %inc109 = add nsw i32 %84, 1
  store i32 %inc109, i32* %bound2l, align 4
  %fillnum110 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %85 = load i16, i16* %fillnum110, align 2
  %86 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %87 = load i32, i32* %index1, align 4
  %idxprom111 = sext i32 %87 to i64
  %arrayidx112 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %86, i64 %idxprom111
  %fillnum113 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx112, i32 0, i32 0
  store i16 %85, i16* %fillnum113, align 2
  %step114 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %88 = load i16, i16* %step114, align 8
  %89 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %90 = load i32, i32* %index1, align 4
  %idxprom115 = sext i32 %90 to i64
  %arrayidx116 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %89, i64 %idxprom115
  %num117 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx116, i32 0, i32 1
  store i16 %88, i16* %num117, align 2
  %91 = load i32, i32* %index1, align 4
  %endindex118 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %92 = load i32, i32* %endindex118, align 4
  %cmp119 = icmp eq i32 %91, %92
  br i1 %cmp119, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.then106
  %flend121 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend121, align 8
  %93 = load i32, i32* %bound2l, align 4
  store i32 %93, i32* %retval, align 4
  br label %return

if.end122:                                        ; preds = %if.then106
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then100
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end91
  %94 = load i32, i32* %index, align 4
  %add125 = add nsw i32 %94, 1
  store i32 %add125, i32* %index1, align 4
  %95 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %96 = load i32, i32* %index1, align 4
  %idxprom126 = sext i32 %96 to i64
  %arrayidx127 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %95, i64 %idxprom126
  %fillnum128 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx127, i32 0, i32 0
  %97 = load i16, i16* %fillnum128, align 2
  %conv129 = zext i16 %97 to i32
  %fillnum130 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %98 = load i16, i16* %fillnum130, align 2
  %conv131 = zext i16 %98 to i32
  %cmp132 = icmp ne i32 %conv129, %conv131
  br i1 %cmp132, label %if.then133, label %if.end157

if.then133:                                       ; preds = %if.end124
  %maparp134 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %99 = load i16*, i16** %maparp134, align 8
  %100 = load i32, i32* %index1, align 4
  %idxprom135 = sext i32 %100 to i64
  %arrayidx136 = getelementptr inbounds i16, i16* %99, i64 %idxprom135
  %101 = load i16, i16* %arrayidx136, align 2
  %conv137 = sext i16 %101 to i32
  %cmp138 = icmp eq i32 %conv137, 0
  br i1 %cmp138, label %if.then139, label %if.end156

if.then139:                                       ; preds = %if.then133
  %102 = load i32, i32* %index1, align 4
  %103 = load i32*, i32** %bound2p.addr, align 8
  %104 = load i32, i32* %bound2l, align 4
  %idxprom140 = sext i32 %104 to i64
  %arrayidx141 = getelementptr inbounds i32, i32* %103, i64 %idxprom140
  store i32 %102, i32* %arrayidx141, align 4
  %105 = load i32, i32* %bound2l, align 4
  %inc142 = add nsw i32 %105, 1
  store i32 %inc142, i32* %bound2l, align 4
  %fillnum143 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %106 = load i16, i16* %fillnum143, align 2
  %107 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %108 = load i32, i32* %index1, align 4
  %idxprom144 = sext i32 %108 to i64
  %arrayidx145 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %107, i64 %idxprom144
  %fillnum146 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx145, i32 0, i32 0
  store i16 %106, i16* %fillnum146, align 2
  %step147 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %109 = load i16, i16* %step147, align 8
  %110 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %111 = load i32, i32* %index1, align 4
  %idxprom148 = sext i32 %111 to i64
  %arrayidx149 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %110, i64 %idxprom148
  %num150 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx149, i32 0, i32 1
  store i16 %109, i16* %num150, align 2
  %112 = load i32, i32* %index1, align 4
  %endindex151 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %113 = load i32, i32* %endindex151, align 4
  %cmp152 = icmp eq i32 %112, %113
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.then139
  %flend154 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend154, align 8
  %114 = load i32, i32* %bound2l, align 4
  store i32 %114, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.then139
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then133
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end124
  %115 = load i32, i32* %index, align 4
  %116 = load i32, i32* %yoffset, align 4
  %add158 = add nsw i32 %115, %116
  %sub159 = sub nsw i32 %add158, 1
  store i32 %sub159, i32* %index1, align 4
  %117 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %118 = load i32, i32* %index1, align 4
  %idxprom160 = sext i32 %118 to i64
  %arrayidx161 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %117, i64 %idxprom160
  %fillnum162 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx161, i32 0, i32 0
  %119 = load i16, i16* %fillnum162, align 2
  %conv163 = zext i16 %119 to i32
  %fillnum164 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %120 = load i16, i16* %fillnum164, align 2
  %conv165 = zext i16 %120 to i32
  %cmp166 = icmp ne i32 %conv163, %conv165
  br i1 %cmp166, label %if.then167, label %if.end191

if.then167:                                       ; preds = %if.end157
  %maparp168 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %121 = load i16*, i16** %maparp168, align 8
  %122 = load i32, i32* %index1, align 4
  %idxprom169 = sext i32 %122 to i64
  %arrayidx170 = getelementptr inbounds i16, i16* %121, i64 %idxprom169
  %123 = load i16, i16* %arrayidx170, align 2
  %conv171 = sext i16 %123 to i32
  %cmp172 = icmp eq i32 %conv171, 0
  br i1 %cmp172, label %if.then173, label %if.end190

if.then173:                                       ; preds = %if.then167
  %124 = load i32, i32* %index1, align 4
  %125 = load i32*, i32** %bound2p.addr, align 8
  %126 = load i32, i32* %bound2l, align 4
  %idxprom174 = sext i32 %126 to i64
  %arrayidx175 = getelementptr inbounds i32, i32* %125, i64 %idxprom174
  store i32 %124, i32* %arrayidx175, align 4
  %127 = load i32, i32* %bound2l, align 4
  %inc176 = add nsw i32 %127, 1
  store i32 %inc176, i32* %bound2l, align 4
  %fillnum177 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %128 = load i16, i16* %fillnum177, align 2
  %129 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %130 = load i32, i32* %index1, align 4
  %idxprom178 = sext i32 %130 to i64
  %arrayidx179 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %129, i64 %idxprom178
  %fillnum180 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx179, i32 0, i32 0
  store i16 %128, i16* %fillnum180, align 2
  %step181 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %131 = load i16, i16* %step181, align 8
  %132 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %133 = load i32, i32* %index1, align 4
  %idxprom182 = sext i32 %133 to i64
  %arrayidx183 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %132, i64 %idxprom182
  %num184 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx183, i32 0, i32 1
  store i16 %131, i16* %num184, align 2
  %134 = load i32, i32* %index1, align 4
  %endindex185 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %135 = load i32, i32* %endindex185, align 4
  %cmp186 = icmp eq i32 %134, %135
  br i1 %cmp186, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.then173
  %flend188 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend188, align 8
  %136 = load i32, i32* %bound2l, align 4
  store i32 %136, i32* %retval, align 4
  br label %return

if.end189:                                        ; preds = %if.then173
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.then167
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end157
  %137 = load i32, i32* %index, align 4
  %138 = load i32, i32* %yoffset, align 4
  %add192 = add nsw i32 %137, %138
  store i32 %add192, i32* %index1, align 4
  %139 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %140 = load i32, i32* %index1, align 4
  %idxprom193 = sext i32 %140 to i64
  %arrayidx194 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %139, i64 %idxprom193
  %fillnum195 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx194, i32 0, i32 0
  %141 = load i16, i16* %fillnum195, align 2
  %conv196 = zext i16 %141 to i32
  %fillnum197 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %142 = load i16, i16* %fillnum197, align 2
  %conv198 = zext i16 %142 to i32
  %cmp199 = icmp ne i32 %conv196, %conv198
  br i1 %cmp199, label %if.then200, label %if.end224

if.then200:                                       ; preds = %if.end191
  %maparp201 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %143 = load i16*, i16** %maparp201, align 8
  %144 = load i32, i32* %index1, align 4
  %idxprom202 = sext i32 %144 to i64
  %arrayidx203 = getelementptr inbounds i16, i16* %143, i64 %idxprom202
  %145 = load i16, i16* %arrayidx203, align 2
  %conv204 = sext i16 %145 to i32
  %cmp205 = icmp eq i32 %conv204, 0
  br i1 %cmp205, label %if.then206, label %if.end223

if.then206:                                       ; preds = %if.then200
  %146 = load i32, i32* %index1, align 4
  %147 = load i32*, i32** %bound2p.addr, align 8
  %148 = load i32, i32* %bound2l, align 4
  %idxprom207 = sext i32 %148 to i64
  %arrayidx208 = getelementptr inbounds i32, i32* %147, i64 %idxprom207
  store i32 %146, i32* %arrayidx208, align 4
  %149 = load i32, i32* %bound2l, align 4
  %inc209 = add nsw i32 %149, 1
  store i32 %inc209, i32* %bound2l, align 4
  %fillnum210 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %150 = load i16, i16* %fillnum210, align 2
  %151 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %152 = load i32, i32* %index1, align 4
  %idxprom211 = sext i32 %152 to i64
  %arrayidx212 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %151, i64 %idxprom211
  %fillnum213 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx212, i32 0, i32 0
  store i16 %150, i16* %fillnum213, align 2
  %step214 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %153 = load i16, i16* %step214, align 8
  %154 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %155 = load i32, i32* %index1, align 4
  %idxprom215 = sext i32 %155 to i64
  %arrayidx216 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %154, i64 %idxprom215
  %num217 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx216, i32 0, i32 1
  store i16 %153, i16* %num217, align 2
  %156 = load i32, i32* %index1, align 4
  %endindex218 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %157 = load i32, i32* %endindex218, align 4
  %cmp219 = icmp eq i32 %156, %157
  br i1 %cmp219, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.then206
  %flend221 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend221, align 8
  %158 = load i32, i32* %bound2l, align 4
  store i32 %158, i32* %retval, align 4
  br label %return

if.end222:                                        ; preds = %if.then206
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.then200
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end191
  %159 = load i32, i32* %index, align 4
  %160 = load i32, i32* %yoffset, align 4
  %add225 = add nsw i32 %159, %160
  %add226 = add nsw i32 %add225, 1
  store i32 %add226, i32* %index1, align 4
  %161 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %162 = load i32, i32* %index1, align 4
  %idxprom227 = sext i32 %162 to i64
  %arrayidx228 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %161, i64 %idxprom227
  %fillnum229 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx228, i32 0, i32 0
  %163 = load i16, i16* %fillnum229, align 2
  %conv230 = zext i16 %163 to i32
  %fillnum231 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %164 = load i16, i16* %fillnum231, align 2
  %conv232 = zext i16 %164 to i32
  %cmp233 = icmp ne i32 %conv230, %conv232
  br i1 %cmp233, label %if.then234, label %if.end258

if.then234:                                       ; preds = %if.end224
  %maparp235 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %165 = load i16*, i16** %maparp235, align 8
  %166 = load i32, i32* %index1, align 4
  %idxprom236 = sext i32 %166 to i64
  %arrayidx237 = getelementptr inbounds i16, i16* %165, i64 %idxprom236
  %167 = load i16, i16* %arrayidx237, align 2
  %conv238 = sext i16 %167 to i32
  %cmp239 = icmp eq i32 %conv238, 0
  br i1 %cmp239, label %if.then240, label %if.end257

if.then240:                                       ; preds = %if.then234
  %168 = load i32, i32* %index1, align 4
  %169 = load i32*, i32** %bound2p.addr, align 8
  %170 = load i32, i32* %bound2l, align 4
  %idxprom241 = sext i32 %170 to i64
  %arrayidx242 = getelementptr inbounds i32, i32* %169, i64 %idxprom241
  store i32 %168, i32* %arrayidx242, align 4
  %171 = load i32, i32* %bound2l, align 4
  %inc243 = add nsw i32 %171, 1
  store i32 %inc243, i32* %bound2l, align 4
  %fillnum244 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %172 = load i16, i16* %fillnum244, align 2
  %173 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %174 = load i32, i32* %index1, align 4
  %idxprom245 = sext i32 %174 to i64
  %arrayidx246 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %173, i64 %idxprom245
  %fillnum247 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx246, i32 0, i32 0
  store i16 %172, i16* %fillnum247, align 2
  %step248 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %175 = load i16, i16* %step248, align 8
  %176 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %177 = load i32, i32* %index1, align 4
  %idxprom249 = sext i32 %177 to i64
  %arrayidx250 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %176, i64 %idxprom249
  %num251 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx250, i32 0, i32 1
  store i16 %175, i16* %num251, align 2
  %178 = load i32, i32* %index1, align 4
  %endindex252 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %179 = load i32, i32* %endindex252, align 4
  %cmp253 = icmp eq i32 %178, %179
  br i1 %cmp253, label %if.then254, label %if.end256

if.then254:                                       ; preds = %if.then240
  %flend255 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend255, align 8
  %180 = load i32, i32* %bound2l, align 4
  store i32 %180, i32* %retval, align 4
  br label %return

if.end256:                                        ; preds = %if.then240
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.then234
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end224
  %181 = load i32, i32* %bound2l, align 4
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %182 = load i32, i32* %maxboundlength, align 8
  %cmp259 = icmp sge i32 %181, %182
  br i1 %cmp259, label %if.then260, label %if.end263

if.then260:                                       ; preds = %if.end258
  %maxboundlength261 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %183 = load i32, i32* %maxboundlength261, align 8
  %sub262 = sub nsw i32 %183, 1
  store i32 %sub262, i32* %bound2l, align 4
  br label %if.end263

if.end263:                                        ; preds = %if.then260, %if.end258
  br label %for.inc

for.inc:                                          ; preds = %if.end263
  %184 = load i32, i32* %i, align 4
  %inc264 = add nsw i32 %184, 1
  store i32 %inc264, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %185 = load i32, i32* %bound2l, align 4
  store i32 %185, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then254, %if.then220, %if.then187, %if.then153, %if.then120, %if.then87, %if.then54, %if.then23
  %186 = load i32, i32* %retval, align 4
  ret i32 %186
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj4fillEiiii(%class.wayobj* %this, i32 %startx, i32 %starty, i32 %endx, i32 %endy) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %endx.addr = alloca i32, align 4
  %endy.addr = alloca i32, align 4
  %boundl = alloca i32, align 4
  %flodd = alloca i8, align 1
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32 %endx, i32* %endx.addr, align 4
  store i32 %endy, i32* %endy.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %0 = load i16, i16* %fillnum, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %1 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %2 = bitcast %struct.waymapcellt* %1 to i8*
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %3 = load i32, i32* %mapxshift, align 8
  %shl = shl i32 1, %3
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %4 = load i32, i32* %mapyshift, align 4
  %shl2 = shl i32 %shl, %4
  %conv3 = sext i32 %shl2 to i64
  %mul = mul i64 %conv3, 4
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %mul, i32 2, i1 false)
  %fillnum4 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  store i16 0, i16* %fillnum4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fillnum5 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %5 = load i16, i16* %fillnum5, align 2
  %inc = add i16 %5, 1
  store i16 %inc, i16* %fillnum5, align 2
  %6 = load i32, i32* %startx.addr, align 4
  %7 = load i32, i32* %starty.addr, align 4
  %call = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %6, i32 %7)
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %8 = load i32*, i32** %bound1p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %call, i32* %arrayidx, align 4
  %fillnum6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %9 = load i16, i16* %fillnum6, align 2
  %waymap7 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %10 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap7, align 8
  %11 = load i32, i32* %starty.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %12 = load i32, i32* %shift, align 8
  %shl8 = shl i32 %11, %12
  %13 = load i32, i32* %startx.addr, align 4
  %or = or i32 %shl8, %13
  %idxprom = sext i32 %or to i64
  %arrayidx9 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %10, i64 %idxprom
  %fillnum10 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx9, i32 0, i32 0
  store i16 %9, i16* %fillnum10, align 2
  %waymap11 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %14 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap11, align 8
  %15 = load i32, i32* %starty.addr, align 4
  %shift12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %16 = load i32, i32* %shift12, align 8
  %shl13 = shl i32 %15, %16
  %17 = load i32, i32* %startx.addr, align 4
  %or14 = or i32 %shl13, %17
  %idxprom15 = sext i32 %or14 to i64
  %arrayidx16 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %14, i64 %idxprom15
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx16, i32 0, i32 1
  store i16 0, i16* %num, align 2
  store i8 0, i8* %flodd, align 1
  store i32 1, i32* %boundl, align 4
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 0, i8* %flend, align 8
  %18 = load i32, i32* %endx.addr, align 4
  %19 = load i32, i32* %endy.addr, align 4
  %call17 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %18, i32 %19)
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %call17, i32* %endindex, align 4
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  store i16 1, i16* %step, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end
  %20 = load i32, i32* %boundl, align 4
  %cmp18 = icmp ne i32 %20, 0
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %flend19 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  %21 = load i8, i8* %flend19, align 8
  %tobool = trunc i8 %21 to i1
  %conv20 = zext i1 %tobool to i32
  %cmp21 = icmp eq i32 %conv20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp21, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i8, i8* %flodd, align 1
  %tobool22 = trunc i8 %23 to i1
  %conv23 = zext i1 %tobool22 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %while.body
  %bound1p26 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %24 = load i32*, i32** %bound1p26, align 8
  %25 = load i32, i32* %boundl, align 4
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  %26 = load i32*, i32** %bound2p, align 8
  %call27 = call i32 @_ZN6wayobj10makebound2EPiiS0_(%class.wayobj* %this1, i32* %24, i32 %25, i32* %26)
  store i32 %call27, i32* %boundl, align 4
  store i8 1, i8* %flodd, align 1
  br label %if.end31

if.else:                                          ; preds = %while.body
  %bound2p28 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  %27 = load i32*, i32** %bound2p28, align 8
  %28 = load i32, i32* %boundl, align 4
  %bound1p29 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %29 = load i32*, i32** %bound1p29, align 8
  %call30 = call i32 @_ZN6wayobj10makebound2EPiiS0_(%class.wayobj* %this1, i32* %27, i32 %28, i32* %29)
  store i32 %call30, i32* %boundl, align 4
  store i8 0, i8* %flodd, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then25
  %step32 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %30 = load i16, i16* %step32, align 8
  %inc33 = add i16 %30, 1
  store i16 %inc33, i16* %step32, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %flend34 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  %31 = load i8, i8* %flend34, align 8
  %tobool35 = trunc i8 %31 to i1
  ret i1 %tobool35
}

; Function Attrs: noinline nounwind uwtable
define i32 @_ZN6wayobj18makeobstaclebound2EPiiS0_(%class.wayobj* %this, i32* %bound1p, i32 %bound1l, i32* %bound2p) #2 align 2 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %class.wayobj*, align 8
  %bound1p.addr = alloca i32*, align 8
  %bound1l.addr = alloca i32, align 4
  %bound2p.addr = alloca i32*, align 8
  %bound2l = alloca i32, align 4
  %index = alloca i32, align 4
  %index1 = alloca i32, align 4
  %yoffset = alloca i32, align 4
  %waymap = alloca %struct.waymapcellt*, align 8
  %i = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32* %bound1p, i32** %bound1p.addr, align 8
  store i32 %bound1l, i32* %bound1l.addr, align 4
  store i32* %bound2p, i32** %bound2p.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %0 = load i32, i32* %maply, align 8
  store i32 %0, i32* %yoffset, align 4
  %waymap2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %1 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap2, align 8
  store %struct.waymapcellt* %1, %struct.waymapcellt** %waymap, align 8
  store i32 0, i32* %bound2l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %bound1l.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %bound1p.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  store i32 %6, i32* %index, align 4
  %7 = load i32, i32* %index, align 4
  %8 = load i32, i32* %yoffset, align 4
  %sub = sub nsw i32 %7, %8
  %sub3 = sub nsw i32 %sub, 1
  store i32 %sub3, i32* %index1, align 4
  %9 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %10 = load i32, i32* %index1, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %9, i64 %idxprom4
  %fillnum = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx5, i32 0, i32 0
  %11 = load i16, i16* %fillnum, align 2
  %conv = zext i16 %11 to i32
  %fillnum6 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %12 = load i16, i16* %fillnum6, align 2
  %conv7 = zext i16 %12 to i32
  %cmp8 = icmp ne i32 %conv, %conv7
  br i1 %cmp8, label %if.then, label %if.end29

if.then:                                          ; preds = %for.body
  %maparp = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %13 = load i16*, i16** %maparp, align 8
  %14 = load i32, i32* %index1, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  %15 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  %16 = load i32, i32* %index1, align 4
  %17 = load i32*, i32** %bound2p.addr, align 8
  %18 = load i32, i32* %bound2l, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  store i32 %16, i32* %arrayidx15, align 4
  %19 = load i32, i32* %bound2l, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %bound2l, align 4
  %fillnum16 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %20 = load i16, i16* %fillnum16, align 2
  %21 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %22 = load i32, i32* %index1, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %21, i64 %idxprom17
  %fillnum19 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx18, i32 0, i32 0
  store i16 %20, i16* %fillnum19, align 2
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %23 = load i16, i16* %step, align 8
  %24 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %25 = load i32, i32* %index1, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %24, i64 %idxprom20
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx21, i32 0, i32 1
  store i16 %23, i16* %num, align 2
  br label %if.end28

if.else:                                          ; preds = %if.then
  %maparp22 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %26 = load i16*, i16** %maparp22, align 8
  %27 = load i32, i32* %index1, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i16, i16* %26, i64 %idxprom23
  %28 = load i16, i16* %arrayidx24, align 2
  %conv25 = sext i16 %28 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then27, label %if.end

if.then27:                                        ; preds = %if.else
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend, align 8
  %29 = load i32, i32* %index1, align 4
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %29, i32* %endindex, align 4
  %30 = load i32, i32* %bound2l, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then13
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.body
  %31 = load i32, i32* %index, align 4
  %32 = load i32, i32* %yoffset, align 4
  %sub30 = sub nsw i32 %31, %32
  store i32 %sub30, i32* %index1, align 4
  %33 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %34 = load i32, i32* %index1, align 4
  %idxprom31 = sext i32 %34 to i64
  %arrayidx32 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %33, i64 %idxprom31
  %fillnum33 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx32, i32 0, i32 0
  %35 = load i16, i16* %fillnum33, align 2
  %conv34 = zext i16 %35 to i32
  %fillnum35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %36 = load i16, i16* %fillnum35, align 2
  %conv36 = zext i16 %36 to i32
  %cmp37 = icmp ne i32 %conv34, %conv36
  br i1 %cmp37, label %if.then38, label %if.end67

if.then38:                                        ; preds = %if.end29
  %maparp39 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %37 = load i16*, i16** %maparp39, align 8
  %38 = load i32, i32* %index1, align 4
  %idxprom40 = sext i32 %38 to i64
  %arrayidx41 = getelementptr inbounds i16, i16* %37, i64 %idxprom40
  %39 = load i16, i16* %arrayidx41, align 2
  %conv42 = sext i16 %39 to i32
  %cmp43 = icmp sgt i32 %conv42, 0
  br i1 %cmp43, label %if.then44, label %if.else56

if.then44:                                        ; preds = %if.then38
  %40 = load i32, i32* %index1, align 4
  %41 = load i32*, i32** %bound2p.addr, align 8
  %42 = load i32, i32* %bound2l, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %41, i64 %idxprom45
  store i32 %40, i32* %arrayidx46, align 4
  %43 = load i32, i32* %bound2l, align 4
  %inc47 = add nsw i32 %43, 1
  store i32 %inc47, i32* %bound2l, align 4
  %fillnum48 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %44 = load i16, i16* %fillnum48, align 2
  %45 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %46 = load i32, i32* %index1, align 4
  %idxprom49 = sext i32 %46 to i64
  %arrayidx50 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %45, i64 %idxprom49
  %fillnum51 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx50, i32 0, i32 0
  store i16 %44, i16* %fillnum51, align 2
  %step52 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %47 = load i16, i16* %step52, align 8
  %48 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %49 = load i32, i32* %index1, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %48, i64 %idxprom53
  %num55 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx54, i32 0, i32 1
  store i16 %47, i16* %num55, align 2
  br label %if.end66

if.else56:                                        ; preds = %if.then38
  %maparp57 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %50 = load i16*, i16** %maparp57, align 8
  %51 = load i32, i32* %index1, align 4
  %idxprom58 = sext i32 %51 to i64
  %arrayidx59 = getelementptr inbounds i16, i16* %50, i64 %idxprom58
  %52 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %52 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.else56
  %flend63 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend63, align 8
  %53 = load i32, i32* %index1, align 4
  %endindex64 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %53, i32* %endindex64, align 4
  %54 = load i32, i32* %bound2l, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %if.else56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then44
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end29
  %55 = load i32, i32* %index, align 4
  %56 = load i32, i32* %yoffset, align 4
  %sub68 = sub nsw i32 %55, %56
  %add = add nsw i32 %sub68, 1
  store i32 %add, i32* %index1, align 4
  %57 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %58 = load i32, i32* %index1, align 4
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %57, i64 %idxprom69
  %fillnum71 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx70, i32 0, i32 0
  %59 = load i16, i16* %fillnum71, align 2
  %conv72 = zext i16 %59 to i32
  %fillnum73 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %60 = load i16, i16* %fillnum73, align 2
  %conv74 = zext i16 %60 to i32
  %cmp75 = icmp ne i32 %conv72, %conv74
  br i1 %cmp75, label %if.then76, label %if.end105

if.then76:                                        ; preds = %if.end67
  %maparp77 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %61 = load i16*, i16** %maparp77, align 8
  %62 = load i32, i32* %index1, align 4
  %idxprom78 = sext i32 %62 to i64
  %arrayidx79 = getelementptr inbounds i16, i16* %61, i64 %idxprom78
  %63 = load i16, i16* %arrayidx79, align 2
  %conv80 = sext i16 %63 to i32
  %cmp81 = icmp sgt i32 %conv80, 0
  br i1 %cmp81, label %if.then82, label %if.else94

if.then82:                                        ; preds = %if.then76
  %64 = load i32, i32* %index1, align 4
  %65 = load i32*, i32** %bound2p.addr, align 8
  %66 = load i32, i32* %bound2l, align 4
  %idxprom83 = sext i32 %66 to i64
  %arrayidx84 = getelementptr inbounds i32, i32* %65, i64 %idxprom83
  store i32 %64, i32* %arrayidx84, align 4
  %67 = load i32, i32* %bound2l, align 4
  %inc85 = add nsw i32 %67, 1
  store i32 %inc85, i32* %bound2l, align 4
  %fillnum86 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %68 = load i16, i16* %fillnum86, align 2
  %69 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %70 = load i32, i32* %index1, align 4
  %idxprom87 = sext i32 %70 to i64
  %arrayidx88 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %69, i64 %idxprom87
  %fillnum89 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx88, i32 0, i32 0
  store i16 %68, i16* %fillnum89, align 2
  %step90 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %71 = load i16, i16* %step90, align 8
  %72 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %73 = load i32, i32* %index1, align 4
  %idxprom91 = sext i32 %73 to i64
  %arrayidx92 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %72, i64 %idxprom91
  %num93 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx92, i32 0, i32 1
  store i16 %71, i16* %num93, align 2
  br label %if.end104

if.else94:                                        ; preds = %if.then76
  %maparp95 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %74 = load i16*, i16** %maparp95, align 8
  %75 = load i32, i32* %index1, align 4
  %idxprom96 = sext i32 %75 to i64
  %arrayidx97 = getelementptr inbounds i16, i16* %74, i64 %idxprom96
  %76 = load i16, i16* %arrayidx97, align 2
  %conv98 = sext i16 %76 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.else94
  %flend101 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend101, align 8
  %77 = load i32, i32* %index1, align 4
  %endindex102 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %77, i32* %endindex102, align 4
  %78 = load i32, i32* %bound2l, align 4
  store i32 %78, i32* %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.else94
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then82
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end67
  %79 = load i32, i32* %index, align 4
  %sub106 = sub nsw i32 %79, 1
  store i32 %sub106, i32* %index1, align 4
  %80 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %81 = load i32, i32* %index1, align 4
  %idxprom107 = sext i32 %81 to i64
  %arrayidx108 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %80, i64 %idxprom107
  %fillnum109 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx108, i32 0, i32 0
  %82 = load i16, i16* %fillnum109, align 2
  %conv110 = zext i16 %82 to i32
  %fillnum111 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %83 = load i16, i16* %fillnum111, align 2
  %conv112 = zext i16 %83 to i32
  %cmp113 = icmp ne i32 %conv110, %conv112
  br i1 %cmp113, label %if.then114, label %if.end143

if.then114:                                       ; preds = %if.end105
  %maparp115 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %84 = load i16*, i16** %maparp115, align 8
  %85 = load i32, i32* %index1, align 4
  %idxprom116 = sext i32 %85 to i64
  %arrayidx117 = getelementptr inbounds i16, i16* %84, i64 %idxprom116
  %86 = load i16, i16* %arrayidx117, align 2
  %conv118 = sext i16 %86 to i32
  %cmp119 = icmp sgt i32 %conv118, 0
  br i1 %cmp119, label %if.then120, label %if.else132

if.then120:                                       ; preds = %if.then114
  %87 = load i32, i32* %index1, align 4
  %88 = load i32*, i32** %bound2p.addr, align 8
  %89 = load i32, i32* %bound2l, align 4
  %idxprom121 = sext i32 %89 to i64
  %arrayidx122 = getelementptr inbounds i32, i32* %88, i64 %idxprom121
  store i32 %87, i32* %arrayidx122, align 4
  %90 = load i32, i32* %bound2l, align 4
  %inc123 = add nsw i32 %90, 1
  store i32 %inc123, i32* %bound2l, align 4
  %fillnum124 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %91 = load i16, i16* %fillnum124, align 2
  %92 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %93 = load i32, i32* %index1, align 4
  %idxprom125 = sext i32 %93 to i64
  %arrayidx126 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %92, i64 %idxprom125
  %fillnum127 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx126, i32 0, i32 0
  store i16 %91, i16* %fillnum127, align 2
  %step128 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %94 = load i16, i16* %step128, align 8
  %95 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %96 = load i32, i32* %index1, align 4
  %idxprom129 = sext i32 %96 to i64
  %arrayidx130 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %95, i64 %idxprom129
  %num131 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx130, i32 0, i32 1
  store i16 %94, i16* %num131, align 2
  br label %if.end142

if.else132:                                       ; preds = %if.then114
  %maparp133 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %97 = load i16*, i16** %maparp133, align 8
  %98 = load i32, i32* %index1, align 4
  %idxprom134 = sext i32 %98 to i64
  %arrayidx135 = getelementptr inbounds i16, i16* %97, i64 %idxprom134
  %99 = load i16, i16* %arrayidx135, align 2
  %conv136 = sext i16 %99 to i32
  %cmp137 = icmp eq i32 %conv136, 0
  br i1 %cmp137, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.else132
  %flend139 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend139, align 8
  %100 = load i32, i32* %index1, align 4
  %endindex140 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %100, i32* %endindex140, align 4
  %101 = load i32, i32* %bound2l, align 4
  store i32 %101, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.else132
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then120
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end105
  %102 = load i32, i32* %index, align 4
  %add144 = add nsw i32 %102, 1
  store i32 %add144, i32* %index1, align 4
  %103 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %104 = load i32, i32* %index1, align 4
  %idxprom145 = sext i32 %104 to i64
  %arrayidx146 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %103, i64 %idxprom145
  %fillnum147 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx146, i32 0, i32 0
  %105 = load i16, i16* %fillnum147, align 2
  %conv148 = zext i16 %105 to i32
  %fillnum149 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %106 = load i16, i16* %fillnum149, align 2
  %conv150 = zext i16 %106 to i32
  %cmp151 = icmp ne i32 %conv148, %conv150
  br i1 %cmp151, label %if.then152, label %if.end181

if.then152:                                       ; preds = %if.end143
  %maparp153 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %107 = load i16*, i16** %maparp153, align 8
  %108 = load i32, i32* %index1, align 4
  %idxprom154 = sext i32 %108 to i64
  %arrayidx155 = getelementptr inbounds i16, i16* %107, i64 %idxprom154
  %109 = load i16, i16* %arrayidx155, align 2
  %conv156 = sext i16 %109 to i32
  %cmp157 = icmp sgt i32 %conv156, 0
  br i1 %cmp157, label %if.then158, label %if.else170

if.then158:                                       ; preds = %if.then152
  %110 = load i32, i32* %index1, align 4
  %111 = load i32*, i32** %bound2p.addr, align 8
  %112 = load i32, i32* %bound2l, align 4
  %idxprom159 = sext i32 %112 to i64
  %arrayidx160 = getelementptr inbounds i32, i32* %111, i64 %idxprom159
  store i32 %110, i32* %arrayidx160, align 4
  %113 = load i32, i32* %bound2l, align 4
  %inc161 = add nsw i32 %113, 1
  store i32 %inc161, i32* %bound2l, align 4
  %fillnum162 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %114 = load i16, i16* %fillnum162, align 2
  %115 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %116 = load i32, i32* %index1, align 4
  %idxprom163 = sext i32 %116 to i64
  %arrayidx164 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %115, i64 %idxprom163
  %fillnum165 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx164, i32 0, i32 0
  store i16 %114, i16* %fillnum165, align 2
  %step166 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %117 = load i16, i16* %step166, align 8
  %118 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %119 = load i32, i32* %index1, align 4
  %idxprom167 = sext i32 %119 to i64
  %arrayidx168 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %118, i64 %idxprom167
  %num169 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx168, i32 0, i32 1
  store i16 %117, i16* %num169, align 2
  br label %if.end180

if.else170:                                       ; preds = %if.then152
  %maparp171 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %120 = load i16*, i16** %maparp171, align 8
  %121 = load i32, i32* %index1, align 4
  %idxprom172 = sext i32 %121 to i64
  %arrayidx173 = getelementptr inbounds i16, i16* %120, i64 %idxprom172
  %122 = load i16, i16* %arrayidx173, align 2
  %conv174 = sext i16 %122 to i32
  %cmp175 = icmp eq i32 %conv174, 0
  br i1 %cmp175, label %if.then176, label %if.end179

if.then176:                                       ; preds = %if.else170
  %flend177 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend177, align 8
  %123 = load i32, i32* %index1, align 4
  %endindex178 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %123, i32* %endindex178, align 4
  %124 = load i32, i32* %bound2l, align 4
  store i32 %124, i32* %retval, align 4
  br label %return

if.end179:                                        ; preds = %if.else170
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then158
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end143
  %125 = load i32, i32* %index, align 4
  %126 = load i32, i32* %yoffset, align 4
  %add182 = add nsw i32 %125, %126
  %sub183 = sub nsw i32 %add182, 1
  store i32 %sub183, i32* %index1, align 4
  %127 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %128 = load i32, i32* %index1, align 4
  %idxprom184 = sext i32 %128 to i64
  %arrayidx185 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %127, i64 %idxprom184
  %fillnum186 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx185, i32 0, i32 0
  %129 = load i16, i16* %fillnum186, align 2
  %conv187 = zext i16 %129 to i32
  %fillnum188 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %130 = load i16, i16* %fillnum188, align 2
  %conv189 = zext i16 %130 to i32
  %cmp190 = icmp ne i32 %conv187, %conv189
  br i1 %cmp190, label %if.then191, label %if.end220

if.then191:                                       ; preds = %if.end181
  %maparp192 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %131 = load i16*, i16** %maparp192, align 8
  %132 = load i32, i32* %index1, align 4
  %idxprom193 = sext i32 %132 to i64
  %arrayidx194 = getelementptr inbounds i16, i16* %131, i64 %idxprom193
  %133 = load i16, i16* %arrayidx194, align 2
  %conv195 = sext i16 %133 to i32
  %cmp196 = icmp sgt i32 %conv195, 0
  br i1 %cmp196, label %if.then197, label %if.else209

if.then197:                                       ; preds = %if.then191
  %134 = load i32, i32* %index1, align 4
  %135 = load i32*, i32** %bound2p.addr, align 8
  %136 = load i32, i32* %bound2l, align 4
  %idxprom198 = sext i32 %136 to i64
  %arrayidx199 = getelementptr inbounds i32, i32* %135, i64 %idxprom198
  store i32 %134, i32* %arrayidx199, align 4
  %137 = load i32, i32* %bound2l, align 4
  %inc200 = add nsw i32 %137, 1
  store i32 %inc200, i32* %bound2l, align 4
  %fillnum201 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %138 = load i16, i16* %fillnum201, align 2
  %139 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %140 = load i32, i32* %index1, align 4
  %idxprom202 = sext i32 %140 to i64
  %arrayidx203 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %139, i64 %idxprom202
  %fillnum204 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx203, i32 0, i32 0
  store i16 %138, i16* %fillnum204, align 2
  %step205 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %141 = load i16, i16* %step205, align 8
  %142 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %143 = load i32, i32* %index1, align 4
  %idxprom206 = sext i32 %143 to i64
  %arrayidx207 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %142, i64 %idxprom206
  %num208 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx207, i32 0, i32 1
  store i16 %141, i16* %num208, align 2
  br label %if.end219

if.else209:                                       ; preds = %if.then191
  %maparp210 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %144 = load i16*, i16** %maparp210, align 8
  %145 = load i32, i32* %index1, align 4
  %idxprom211 = sext i32 %145 to i64
  %arrayidx212 = getelementptr inbounds i16, i16* %144, i64 %idxprom211
  %146 = load i16, i16* %arrayidx212, align 2
  %conv213 = sext i16 %146 to i32
  %cmp214 = icmp eq i32 %conv213, 0
  br i1 %cmp214, label %if.then215, label %if.end218

if.then215:                                       ; preds = %if.else209
  %flend216 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend216, align 8
  %147 = load i32, i32* %index1, align 4
  %endindex217 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %147, i32* %endindex217, align 4
  %148 = load i32, i32* %bound2l, align 4
  store i32 %148, i32* %retval, align 4
  br label %return

if.end218:                                        ; preds = %if.else209
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then197
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.end181
  %149 = load i32, i32* %index, align 4
  %150 = load i32, i32* %yoffset, align 4
  %add221 = add nsw i32 %149, %150
  store i32 %add221, i32* %index1, align 4
  %151 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %152 = load i32, i32* %index1, align 4
  %idxprom222 = sext i32 %152 to i64
  %arrayidx223 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %151, i64 %idxprom222
  %fillnum224 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx223, i32 0, i32 0
  %153 = load i16, i16* %fillnum224, align 2
  %conv225 = zext i16 %153 to i32
  %fillnum226 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %154 = load i16, i16* %fillnum226, align 2
  %conv227 = zext i16 %154 to i32
  %cmp228 = icmp ne i32 %conv225, %conv227
  br i1 %cmp228, label %if.then229, label %if.end258

if.then229:                                       ; preds = %if.end220
  %maparp230 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %155 = load i16*, i16** %maparp230, align 8
  %156 = load i32, i32* %index1, align 4
  %idxprom231 = sext i32 %156 to i64
  %arrayidx232 = getelementptr inbounds i16, i16* %155, i64 %idxprom231
  %157 = load i16, i16* %arrayidx232, align 2
  %conv233 = sext i16 %157 to i32
  %cmp234 = icmp sgt i32 %conv233, 0
  br i1 %cmp234, label %if.then235, label %if.else247

if.then235:                                       ; preds = %if.then229
  %158 = load i32, i32* %index1, align 4
  %159 = load i32*, i32** %bound2p.addr, align 8
  %160 = load i32, i32* %bound2l, align 4
  %idxprom236 = sext i32 %160 to i64
  %arrayidx237 = getelementptr inbounds i32, i32* %159, i64 %idxprom236
  store i32 %158, i32* %arrayidx237, align 4
  %161 = load i32, i32* %bound2l, align 4
  %inc238 = add nsw i32 %161, 1
  store i32 %inc238, i32* %bound2l, align 4
  %fillnum239 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %162 = load i16, i16* %fillnum239, align 2
  %163 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %164 = load i32, i32* %index1, align 4
  %idxprom240 = sext i32 %164 to i64
  %arrayidx241 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %163, i64 %idxprom240
  %fillnum242 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx241, i32 0, i32 0
  store i16 %162, i16* %fillnum242, align 2
  %step243 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %165 = load i16, i16* %step243, align 8
  %166 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %167 = load i32, i32* %index1, align 4
  %idxprom244 = sext i32 %167 to i64
  %arrayidx245 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %166, i64 %idxprom244
  %num246 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx245, i32 0, i32 1
  store i16 %165, i16* %num246, align 2
  br label %if.end257

if.else247:                                       ; preds = %if.then229
  %maparp248 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %168 = load i16*, i16** %maparp248, align 8
  %169 = load i32, i32* %index1, align 4
  %idxprom249 = sext i32 %169 to i64
  %arrayidx250 = getelementptr inbounds i16, i16* %168, i64 %idxprom249
  %170 = load i16, i16* %arrayidx250, align 2
  %conv251 = sext i16 %170 to i32
  %cmp252 = icmp eq i32 %conv251, 0
  br i1 %cmp252, label %if.then253, label %if.end256

if.then253:                                       ; preds = %if.else247
  %flend254 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend254, align 8
  %171 = load i32, i32* %index1, align 4
  %endindex255 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %171, i32* %endindex255, align 4
  %172 = load i32, i32* %bound2l, align 4
  store i32 %172, i32* %retval, align 4
  br label %return

if.end256:                                        ; preds = %if.else247
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.then235
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end220
  %173 = load i32, i32* %index, align 4
  %174 = load i32, i32* %yoffset, align 4
  %add259 = add nsw i32 %173, %174
  %add260 = add nsw i32 %add259, 1
  store i32 %add260, i32* %index1, align 4
  %175 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %176 = load i32, i32* %index1, align 4
  %idxprom261 = sext i32 %176 to i64
  %arrayidx262 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %175, i64 %idxprom261
  %fillnum263 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx262, i32 0, i32 0
  %177 = load i16, i16* %fillnum263, align 2
  %conv264 = zext i16 %177 to i32
  %fillnum265 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %178 = load i16, i16* %fillnum265, align 2
  %conv266 = zext i16 %178 to i32
  %cmp267 = icmp ne i32 %conv264, %conv266
  br i1 %cmp267, label %if.then268, label %if.end297

if.then268:                                       ; preds = %if.end258
  %maparp269 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %179 = load i16*, i16** %maparp269, align 8
  %180 = load i32, i32* %index1, align 4
  %idxprom270 = sext i32 %180 to i64
  %arrayidx271 = getelementptr inbounds i16, i16* %179, i64 %idxprom270
  %181 = load i16, i16* %arrayidx271, align 2
  %conv272 = sext i16 %181 to i32
  %cmp273 = icmp sgt i32 %conv272, 0
  br i1 %cmp273, label %if.then274, label %if.else286

if.then274:                                       ; preds = %if.then268
  %182 = load i32, i32* %index1, align 4
  %183 = load i32*, i32** %bound2p.addr, align 8
  %184 = load i32, i32* %bound2l, align 4
  %idxprom275 = sext i32 %184 to i64
  %arrayidx276 = getelementptr inbounds i32, i32* %183, i64 %idxprom275
  store i32 %182, i32* %arrayidx276, align 4
  %185 = load i32, i32* %bound2l, align 4
  %inc277 = add nsw i32 %185, 1
  store i32 %inc277, i32* %bound2l, align 4
  %fillnum278 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %186 = load i16, i16* %fillnum278, align 2
  %187 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %188 = load i32, i32* %index1, align 4
  %idxprom279 = sext i32 %188 to i64
  %arrayidx280 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %187, i64 %idxprom279
  %fillnum281 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx280, i32 0, i32 0
  store i16 %186, i16* %fillnum281, align 2
  %step282 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %189 = load i16, i16* %step282, align 8
  %190 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %191 = load i32, i32* %index1, align 4
  %idxprom283 = sext i32 %191 to i64
  %arrayidx284 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %190, i64 %idxprom283
  %num285 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx284, i32 0, i32 1
  store i16 %189, i16* %num285, align 2
  br label %if.end296

if.else286:                                       ; preds = %if.then268
  %maparp287 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 17
  %192 = load i16*, i16** %maparp287, align 8
  %193 = load i32, i32* %index1, align 4
  %idxprom288 = sext i32 %193 to i64
  %arrayidx289 = getelementptr inbounds i16, i16* %192, i64 %idxprom288
  %194 = load i16, i16* %arrayidx289, align 2
  %conv290 = sext i16 %194 to i32
  %cmp291 = icmp eq i32 %conv290, 0
  br i1 %cmp291, label %if.then292, label %if.end295

if.then292:                                       ; preds = %if.else286
  %flend293 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 1, i8* %flend293, align 8
  %195 = load i32, i32* %index1, align 4
  %endindex294 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  store i32 %195, i32* %endindex294, align 4
  %196 = load i32, i32* %bound2l, align 4
  store i32 %196, i32* %retval, align 4
  br label %return

if.end295:                                        ; preds = %if.else286
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.then274
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.end258
  %197 = load i32, i32* %bound2l, align 4
  %maxboundlength = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %198 = load i32, i32* %maxboundlength, align 8
  %cmp298 = icmp sge i32 %197, %198
  br i1 %cmp298, label %if.then299, label %if.end302

if.then299:                                       ; preds = %if.end297
  %maxboundlength300 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 21
  %199 = load i32, i32* %maxboundlength300, align 8
  %sub301 = sub nsw i32 %199, 1
  store i32 %sub301, i32* %bound2l, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then299, %if.end297
  br label %for.inc

for.inc:                                          ; preds = %if.end302
  %200 = load i32, i32* %i, align 4
  %inc303 = add nsw i32 %200, 1
  store i32 %inc303, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %201 = load i32, i32* %bound2l, align 4
  store i32 %201, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then292, %if.then253, %if.then215, %if.then176, %if.then138, %if.then100, %if.then62, %if.then27
  %202 = load i32, i32* %retval, align 4
  ret i32 %202
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this, i32 %startx, i32 %starty, i32* dereferenceable(4) %freepointx, i32* dereferenceable(4) %freepointy) #0 align 2 {
entry:
  %retval = alloca i1, align 1
  %this.addr = alloca %class.wayobj*, align 8
  %startx.addr = alloca i32, align 4
  %starty.addr = alloca i32, align 4
  %freepointx.addr = alloca i32*, align 8
  %freepointy.addr = alloca i32*, align 8
  %boundl = alloca i32, align 4
  %flodd = alloca i8, align 1
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %startx, i32* %startx.addr, align 4
  store i32 %starty, i32* %starty.addr, align 4
  store i32* %freepointx, i32** %freepointx.addr, align 8
  store i32* %freepointy, i32** %freepointy.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load i32, i32* %startx.addr, align 4
  %1 = load i32, i32* %starty.addr, align 4
  %call = call zeroext i1 @_ZN6wayobj5ismapEii(%class.wayobj* %this1, i32 %0, i32 %1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %startx.addr, align 4
  %3 = load i32*, i32** %freepointx.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %starty.addr, align 4
  %5 = load i32*, i32** %freepointy.addr, align 8
  store i32 %4, i32* %5, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %startx.addr, align 4
  %7 = load i32, i32* %starty.addr, align 4
  %call2 = call dereferenceable(2) i16* @_ZN6wayobj3mapEii(%class.wayobj* %this1, i32 %6, i32 %7)
  %8 = load i16, i16* %call2, align 2
  %conv = sext i16 %8 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %startx.addr, align 4
  %10 = load i32*, i32** %freepointx.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %starty.addr, align 4
  %12 = load i32*, i32** %freepointy.addr, align 8
  store i32 %11, i32* %12, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  %fillnum = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %13 = load i16, i16* %fillnum, align 2
  %conv5 = zext i16 %13 to i32
  %cmp6 = icmp eq i32 %conv5, 65535
  br i1 %cmp6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end4
  %waymap = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %14 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap, align 8
  %15 = bitcast %struct.waymapcellt* %14 to i8*
  %mapxshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 0
  %16 = load i32, i32* %mapxshift, align 8
  %shl = shl i32 1, %16
  %mapyshift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 1
  %17 = load i32, i32* %mapyshift, align 4
  %shl8 = shl i32 %shl, %17
  %conv9 = sext i32 %shl8 to i64
  %mul = mul i64 %conv9, 4
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 %mul, i32 2, i1 false)
  %fillnum10 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  store i16 0, i16* %fillnum10, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end4
  %fillnum12 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %18 = load i16, i16* %fillnum12, align 2
  %inc = add i16 %18, 1
  store i16 %inc, i16* %fillnum12, align 2
  %19 = load i32, i32* %startx.addr, align 4
  %20 = load i32, i32* %starty.addr, align 4
  %call13 = call i32 @_ZN6wayobj5indexEii(%class.wayobj* %this1, i32 %19, i32 %20)
  %bound1p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %21 = load i32*, i32** %bound1p, align 8
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %call13, i32* %arrayidx, align 4
  %fillnum14 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 27
  %22 = load i16, i16* %fillnum14, align 2
  %waymap15 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %23 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap15, align 8
  %24 = load i32, i32* %starty.addr, align 4
  %shift = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %25 = load i32, i32* %shift, align 8
  %shl16 = shl i32 %24, %25
  %26 = load i32, i32* %startx.addr, align 4
  %or = or i32 %shl16, %26
  %idxprom = sext i32 %or to i64
  %arrayidx17 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %23, i64 %idxprom
  %fillnum18 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx17, i32 0, i32 0
  store i16 %22, i16* %fillnum18, align 2
  %waymap19 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 18
  %27 = load %struct.waymapcellt*, %struct.waymapcellt** %waymap19, align 8
  %28 = load i32, i32* %starty.addr, align 4
  %shift20 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 2
  %29 = load i32, i32* %shift20, align 8
  %shl21 = shl i32 %28, %29
  %30 = load i32, i32* %startx.addr, align 4
  %or22 = or i32 %shl21, %30
  %idxprom23 = sext i32 %or22 to i64
  %arrayidx24 = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %27, i64 %idxprom23
  %num = getelementptr inbounds %struct.waymapcellt, %struct.waymapcellt* %arrayidx24, i32 0, i32 1
  store i16 0, i16* %num, align 2
  store i8 0, i8* %flodd, align 1
  store i32 1, i32* %boundl, align 4
  %flend = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  store i8 0, i8* %flend, align 8
  %step = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  store i16 1, i16* %step, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end11
  %31 = load i32, i32* %boundl, align 4
  %cmp25 = icmp ne i32 %31, 0
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %flend26 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  %32 = load i8, i8* %flend26, align 8
  %tobool = trunc i8 %32 to i1
  %conv27 = zext i1 %tobool to i32
  %cmp28 = icmp eq i32 %conv27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %cmp28, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i8, i8* %flodd, align 1
  %tobool29 = trunc i8 %34 to i1
  %conv30 = zext i1 %tobool29 to i32
  %cmp31 = icmp eq i32 %conv30, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %while.body
  %bound1p33 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %35 = load i32*, i32** %bound1p33, align 8
  %36 = load i32, i32* %boundl, align 4
  %bound2p = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  %37 = load i32*, i32** %bound2p, align 8
  %call34 = call i32 @_ZN6wayobj18makeobstaclebound2EPiiS0_(%class.wayobj* %this1, i32* %35, i32 %36, i32* %37)
  store i32 %call34, i32* %boundl, align 4
  store i8 1, i8* %flodd, align 1
  br label %if.end38

if.else:                                          ; preds = %while.body
  %bound2p35 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 20
  %38 = load i32*, i32** %bound2p35, align 8
  %39 = load i32, i32* %boundl, align 4
  %bound1p36 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 19
  %40 = load i32*, i32** %bound1p36, align 8
  %call37 = call i32 @_ZN6wayobj18makeobstaclebound2EPiiS0_(%class.wayobj* %this1, i32* %38, i32 %39, i32* %40)
  store i32 %call37, i32* %boundl, align 4
  store i8 0, i8* %flodd, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then32
  %step39 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 26
  %41 = load i16, i16* %step39, align 8
  %inc40 = add i16 %41, 1
  store i16 %inc40, i16* %step39, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %endindex = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %42 = load i32, i32* %endindex, align 4
  %call41 = call i32 @_ZN6wayobj6indexxEi(%class.wayobj* %this1, i32 %42)
  %43 = load i32*, i32** %freepointx.addr, align 8
  store i32 %call41, i32* %43, align 4
  %endindex42 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 25
  %44 = load i32, i32* %endindex42, align 4
  %call43 = call i32 @_ZN6wayobj6indexyEi(%class.wayobj* %this1, i32 %44)
  %45 = load i32*, i32** %freepointy.addr, align 8
  store i32 %call43, i32* %45, align 4
  %flend44 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 23
  %46 = load i8, i8* %flend44, align 8
  %tobool45 = trunc i8 %46 to i1
  store i1 %tobool45, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %47 = load i1, i1* %retval, align 1
  ret i1 %47
}

; Function Attrs: noinline uwtable
define zeroext i1 @_ZN6wayobj13findfreepointEffRfS0_(%class.wayobj* %this, float %startx, float %starty, float* dereferenceable(4) %freepointx, float* dereferenceable(4) %freepointy) #0 align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %startx.addr = alloca float, align 4
  %starty.addr = alloca float, align 4
  %freepointx.addr = alloca float*, align 8
  %freepointy.addr = alloca float*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %freex = alloca i32, align 4
  %freey = alloca i32, align 4
  %res = alloca i8, align 1
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store float %startx, float* %startx.addr, align 4
  store float %starty, float* %starty.addr, align 4
  store float* %freepointx, float** %freepointx.addr, align 8
  store float* %freepointy, float** %freepointy.addr, align 8
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %0 = load float, float* %startx.addr, align 4
  %call = call i32 @_ZN6wayobj4getxEf(%class.wayobj* %this1, float %0)
  store i32 %call, i32* %x, align 4
  %1 = load float, float* %starty.addr, align 4
  %call2 = call i32 @_ZN6wayobj4getyEf(%class.wayobj* %this1, float %1)
  store i32 %call2, i32* %y, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %call3 = call zeroext i1 @_ZN6wayobj13findfreepointEiiRiS0_(%class.wayobj* %this1, i32 %2, i32 %3, i32* dereferenceable(4) %freex, i32* dereferenceable(4) %freey)
  %frombool = zext i1 %call3 to i8
  store i8 %frombool, i8* %res, align 1
  %4 = load i32, i32* %freex, align 4
  %call4 = call float @_ZN6wayobj9getxcoordEi(%class.wayobj* %this1, i32 %4)
  %5 = load float*, float** %freepointx.addr, align 8
  store float %call4, float* %5, align 4
  %6 = load i32, i32* %freey, align 4
  %call5 = call float @_ZN6wayobj9getycoordEi(%class.wayobj* %this1, i32 %6)
  %7 = load float*, float** %freepointy.addr, align 8
  store float %call5, float* %7, align 4
  %8 = load i8, i8* %res, align 1
  %tobool = trunc i8 %8 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZN6wayobj9getxcoordEi(%class.wayobj* %this, i32 %x) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %x.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 0
  %0 = load float, float* %minx, align 8
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %1 = load float, float* %cellr, align 4
  %add = fadd float %0, %1
  %2 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %2 to float
  %info2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxx = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info2, i32 0, i32 1
  %3 = load float, float* %maxx, align 4
  %info3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %minx4 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info3, i32 0, i32 0
  %4 = load float, float* %minx4, align 8
  %sub = fsub float %3, %4
  %mul = fmul float %conv, %sub
  %maplx = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 7
  %5 = load i32, i32* %maplx, align 4
  %conv5 = sitofp i32 %5 to float
  %div = fdiv float %mul, %conv5
  %add6 = fadd float %add, %div
  ret float %add6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr float @_ZN6wayobj9getycoordEi(%class.wayobj* %this, i32 %y) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.wayobj*, align 8
  %y.addr = alloca i32, align 4
  store %class.wayobj* %this, %class.wayobj** %this.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %this1 = load %class.wayobj*, %class.wayobj** %this.addr, align 8
  %info = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info, i32 0, i32 2
  %0 = load float, float* %miny, align 8
  %cellr = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 13
  %1 = load float, float* %cellr, align 4
  %add = fadd float %0, %1
  %2 = load i32, i32* %y.addr, align 4
  %conv = sitofp i32 %2 to float
  %info2 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %maxy = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info2, i32 0, i32 3
  %3 = load float, float* %maxy, align 4
  %info3 = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 14
  %miny4 = getelementptr inbounds %struct.createwaymnginfot, %struct.createwaymnginfot* %info3, i32 0, i32 2
  %4 = load float, float* %miny4, align 8
  %sub = fsub float %3, %4
  %mul = fmul float %conv, %sub
  %maply = getelementptr inbounds %class.wayobj, %class.wayobj* %this1, i32 0, i32 8
  %5 = load i32, i32* %maply, align 8
  %conv5 = sitofp i32 %5 to float
  %div = fdiv float %mul, %conv5
  %add6 = fadd float %add, %div
  ret float %add6
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { builtin }
attributes #12 = { builtin nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
