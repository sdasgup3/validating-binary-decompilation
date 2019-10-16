; ModuleID = 'smallpt/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Ray = type { %struct.Vec, %struct.Vec }

$_ZN3VecC2Eddd = comdat any

$_ZN6SphereC2Ed3VecS0_S0_6Refl_t = comdat any

$_ZNK3VecmlEd = comdat any

$_Z9intersectRK3RayRdRi = comdat any

$_ZNK3VecplERKS_ = comdat any

$_ZNK3VecmiERKS_ = comdat any

$_ZN3Vec4normEv = comdat any

$_ZNK3Vec3dotERKS_ = comdat any

$_ZN3VecrmERS_ = comdat any

$_ZN3RayC2E3VecS0_ = comdat any

$_ZNK3Vec4multERKS_ = comdat any

$_ZNK6Sphere9intersectERK3Ray = comdat any

$_Z5clampd = comdat any

@spheres = global [9 x %struct.Sphere] zeroinitializer, align 16
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_smallpt.cpp, i8* null }]
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"Rendering (%d spp)\0A\00", align 1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_smallpt.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp1 = alloca %struct.Vec, align 8
  %agg.tmp2 = alloca %struct.Vec, align 8
  %agg.tmp3 = alloca %struct.Vec, align 8
  %agg.tmp4 = alloca %struct.Vec, align 8
  %agg.tmp5 = alloca %struct.Vec, align 8
  %agg.tmp6 = alloca %struct.Vec, align 8
  %agg.tmp7 = alloca %struct.Vec, align 8
  %agg.tmp8 = alloca %struct.Vec, align 8
  %agg.tmp9 = alloca %struct.Vec, align 8
  %agg.tmp10 = alloca %struct.Vec, align 8
  %agg.tmp11 = alloca %struct.Vec, align 8
  %agg.tmp12 = alloca %struct.Vec, align 8
  %agg.tmp13 = alloca %struct.Vec, align 8
  %agg.tmp14 = alloca %struct.Vec, align 8
  %agg.tmp15 = alloca %struct.Vec, align 8
  %agg.tmp16 = alloca %struct.Vec, align 8
  %agg.tmp17 = alloca %struct.Vec, align 8
  %agg.tmp18 = alloca %struct.Vec, align 8
  %agg.tmp19 = alloca %struct.Vec, align 8
  %agg.tmp20 = alloca %struct.Vec, align 8
  %tmp = alloca %struct.Vec, align 8
  %agg.tmp21 = alloca %struct.Vec, align 8
  %agg.tmp22 = alloca %struct.Vec, align 8
  %agg.tmp23 = alloca %struct.Vec, align 8
  %tmp24 = alloca %struct.Vec, align 8
  %agg.tmp25 = alloca %struct.Vec, align 8
  %agg.tmp26 = alloca %struct.Vec, align 8
  %agg.tmp27 = alloca %struct.Vec, align 8
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp, double 1.000010e+05, double 4.080000e+01, double 8.160000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp1, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp2, double 7.500000e-01, double 2.500000e-01, double 2.500000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 0), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp, %struct.Vec* byval align 8 %agg.tmp1, %struct.Vec* byval align 8 %agg.tmp2, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp3, double -9.990100e+04, double 4.080000e+01, double 8.160000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp4, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp5, double 2.500000e-01, double 2.500000e-01, double 7.500000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 1), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp3, %struct.Vec* byval align 8 %agg.tmp4, %struct.Vec* byval align 8 %agg.tmp5, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp6, double 5.000000e+01, double 4.080000e+01, double 1.000000e+05)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp7, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp8, double 7.500000e-01, double 7.500000e-01, double 7.500000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 2), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp6, %struct.Vec* byval align 8 %agg.tmp7, %struct.Vec* byval align 8 %agg.tmp8, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp9, double 5.000000e+01, double 4.080000e+01, double -9.983000e+04)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp10, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp11, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 3), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp9, %struct.Vec* byval align 8 %agg.tmp10, %struct.Vec* byval align 8 %agg.tmp11, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp12, double 5.000000e+01, double 1.000000e+05, double 8.160000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp13, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp14, double 7.500000e-01, double 7.500000e-01, double 7.500000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 4), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp12, %struct.Vec* byval align 8 %agg.tmp13, %struct.Vec* byval align 8 %agg.tmp14, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp15, double 5.000000e+01, double -9.991840e+04, double 8.160000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp16, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp17, double 7.500000e-01, double 7.500000e-01, double 7.500000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 5), double 1.000000e+05, %struct.Vec* byval align 8 %agg.tmp15, %struct.Vec* byval align 8 %agg.tmp16, %struct.Vec* byval align 8 %agg.tmp17, i32 0)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp18, double 2.700000e+01, double 1.650000e+01, double 4.700000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp19, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %agg.tmp20, %struct.Vec* %tmp, double 9.990000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 6), double 1.650000e+01, %struct.Vec* byval align 8 %agg.tmp18, %struct.Vec* byval align 8 %agg.tmp19, %struct.Vec* byval align 8 %agg.tmp20, i32 1)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp21, double 7.300000e+01, double 1.650000e+01, double 7.800000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp22, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp24, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %agg.tmp23, %struct.Vec* %tmp24, double 9.990000e-01)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 7), double 1.650000e+01, %struct.Vec* byval align 8 %agg.tmp21, %struct.Vec* byval align 8 %agg.tmp22, %struct.Vec* byval align 8 %agg.tmp23, i32 2)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp25, double 5.000000e+01, double 6.813300e+02, double 8.160000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp26, double 1.200000e+01, double 1.200000e+01, double 1.200000e+01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp27, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 8), double 6.000000e+02, %struct.Vec* byval align 8 %agg.tmp25, %struct.Vec* byval align 8 %agg.tmp26, %struct.Vec* byval align 8 %agg.tmp27, i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3VecC2Eddd(%struct.Vec* %this, double %x_, double %y_, double %z_) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %x_.addr = alloca double, align 8
  %y_.addr = alloca double, align 8
  %z_.addr = alloca double, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store double %x_, double* %x_.addr, align 8
  store double %y_, double* %y_.addr, align 8
  store double %z_, double* %z_.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %0 = load double, double* %x_.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  store double %0, double* %x, align 8
  %1 = load double, double* %y_.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  store double %1, double* %y, align 8
  %2 = load double, double* %z_.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  store double %2, double* %z, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* %this, double %rad_, %struct.Vec* byval align 8 %p_, %struct.Vec* byval align 8 %e_, %struct.Vec* byval align 8 %c_, i32 %refl_) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %rad_.addr = alloca double, align 8
  %refl_.addr = alloca i32, align 4
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store double %rad_, double* %rad_.addr, align 8
  store i32 %refl_, i32* %refl_.addr, align 4
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %rad = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0
  %0 = load double, double* %rad_.addr, align 8
  store double %0, double* %rad, align 8
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  %1 = bitcast %struct.Vec* %p to i8*
  %2 = bitcast %struct.Vec* %p_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 24, i32 8, i1 false)
  %e = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 2
  %3 = bitcast %struct.Vec* %e to i8*
  %4 = bitcast %struct.Vec* %e_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  %c = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 3
  %5 = bitcast %struct.Vec* %c to i8*
  %6 = bitcast %struct.Vec* %c_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 24, i32 8, i1 false)
  %refl = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 4
  %7 = load i32, i32* %refl_.addr, align 4
  store i32 %7, i32* %refl, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3VecmlEd(%struct.Vec* noalias sret %agg.result, %struct.Vec* %this, double %b) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca double, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store double %b, double* %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load double, double* %b.addr, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %3 = load double, double* %b.addr, align 8
  %mul2 = fmul double %2, %3
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %5 = load double, double* %b.addr, align 8
  %mul3 = fmul double %4, %5
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %mul, double %mul2, double %mul3)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline uwtable
define void @_Z8radianceRK3RayiPt(%struct.Vec* noalias sret %agg.result, %struct.Ray* dereferenceable(48) %r, i32 %depth, i16* %Xi) #0 {
entry:
  %r.addr = alloca %struct.Ray*, align 8
  %depth.addr = alloca i32, align 4
  %Xi.addr = alloca i16*, align 8
  %t = alloca double, align 8
  %id = alloca i32, align 4
  %obj = alloca %struct.Sphere*, align 8
  %x = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %n = alloca %struct.Vec, align 8
  %tmp = alloca %struct.Vec, align 8
  %nl = alloca %struct.Vec, align 8
  %f = alloca %struct.Vec, align 8
  %p7 = alloca double, align 8
  %ref.tmp30 = alloca %struct.Vec, align 8
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  %r2s = alloca double, align 8
  %w = alloca %struct.Vec, align 8
  %u = alloca %struct.Vec, align 8
  %tmp47 = alloca %struct.Vec, align 8
  %tmp54 = alloca %struct.Vec, align 8
  %v = alloca %struct.Vec, align 8
  %d58 = alloca %struct.Vec, align 8
  %tmp60 = alloca %struct.Vec, align 8
  %tmp61 = alloca %struct.Vec, align 8
  %ref.tmp62 = alloca %struct.Vec, align 8
  %tmp64 = alloca %struct.Vec, align 8
  %tmp65 = alloca %struct.Vec, align 8
  %ref.tmp66 = alloca %struct.Vec, align 8
  %tmp68 = alloca %struct.Vec, align 8
  %ref.tmp71 = alloca %struct.Vec, align 8
  %ref.tmp72 = alloca %struct.Vec, align 8
  %ref.tmp73 = alloca %struct.Ray, align 8
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp74 = alloca %struct.Vec, align 8
  %ref.tmp80 = alloca %struct.Vec, align 8
  %ref.tmp81 = alloca %struct.Vec, align 8
  %ref.tmp82 = alloca %struct.Ray, align 8
  %agg.tmp83 = alloca %struct.Vec, align 8
  %agg.tmp84 = alloca %struct.Vec, align 8
  %ref.tmp86 = alloca %struct.Vec, align 8
  %tmp87 = alloca %struct.Vec, align 8
  %reflRay = alloca %struct.Ray, align 8
  %agg.tmp93 = alloca %struct.Vec, align 8
  %agg.tmp94 = alloca %struct.Vec, align 8
  %ref.tmp96 = alloca %struct.Vec, align 8
  %tmp97 = alloca %struct.Vec, align 8
  %into = alloca i8, align 1
  %nc = alloca double, align 8
  %nt = alloca double, align 8
  %nnt = alloca double, align 8
  %ddn = alloca double, align 8
  %cos2t = alloca double, align 8
  %ref.tmp124 = alloca %struct.Vec, align 8
  %ref.tmp125 = alloca %struct.Vec, align 8
  %tdir = alloca %struct.Vec, align 8
  %tmp129 = alloca %struct.Vec, align 8
  %ref.tmp130 = alloca %struct.Vec, align 8
  %tmp136 = alloca %struct.Vec, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %R0 = alloca double, align 8
  %c147 = alloca double, align 8
  %Re = alloca double, align 8
  %Tr = alloca double, align 8
  %P = alloca double, align 8
  %RP = alloca double, align 8
  %TP = alloca double, align 8
  %ref.tmp175 = alloca %struct.Vec, align 8
  %ref.tmp176 = alloca %struct.Vec, align 8
  %tmp182 = alloca %struct.Vec, align 8
  %ref.tmp184 = alloca %struct.Ray, align 8
  %agg.tmp185 = alloca %struct.Vec, align 8
  %agg.tmp186 = alloca %struct.Vec, align 8
  %tmp187 = alloca %struct.Vec, align 8
  %tmp190 = alloca %struct.Vec, align 8
  %tmp191 = alloca %struct.Vec, align 8
  %ref.tmp192 = alloca %struct.Vec, align 8
  %ref.tmp193 = alloca %struct.Ray, align 8
  %agg.tmp194 = alloca %struct.Vec, align 8
  %agg.tmp195 = alloca %struct.Vec, align 8
  %tmp196 = alloca %struct.Vec, align 8
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i16* %Xi, i16** %Xi.addr, align 8
  store i32 0, i32* %id, align 4
  %0 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %call = call zeroext i1 @_Z9intersectRK3RayRdRi(%struct.Ray* dereferenceable(48) %0, double* dereferenceable(8) %t, i32* dereferenceable(4) %id)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %id, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %idxprom
  store %struct.Sphere* %arrayidx, %struct.Sphere** %obj, align 8
  %2 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %2, i32 0, i32 0
  %3 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %3, i32 0, i32 1
  %4 = load double, double* %t, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp, %struct.Vec* %d, double %4)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %x, %struct.Vec* %o, %struct.Vec* dereferenceable(24) %ref.tmp)
  %5 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %5, i32 0, i32 1
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret %tmp, %struct.Vec* %x, %struct.Vec* dereferenceable(24) %p)
  %call1 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp)
  %6 = bitcast %struct.Vec* %n to i8*
  %7 = bitcast %struct.Vec* %call1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  %8 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d3 = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i32 0, i32 1
  %call4 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %n, %struct.Vec* dereferenceable(24) %d3)
  %cmp = fcmp olt double %call4, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = bitcast %struct.Vec* %nl to i8*
  %10 = bitcast %struct.Vec* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @_ZNK3VecmlEd(%struct.Vec* sret %nl, %struct.Vec* %n, double -1.000000e+00)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %c = getelementptr inbounds %struct.Sphere, %struct.Sphere* %11, i32 0, i32 3
  %12 = bitcast %struct.Vec* %f to i8*
  %13 = bitcast %struct.Vec* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %x8 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0
  %14 = load double, double* %x8, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1
  %15 = load double, double* %y, align 8
  %cmp9 = fcmp ogt double %14, %15
  br i1 %cmp9, label %land.lhs.true, label %cond.false14

land.lhs.true:                                    ; preds = %cond.end
  %x10 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0
  %16 = load double, double* %x10, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2
  %17 = load double, double* %z, align 8
  %cmp11 = fcmp ogt double %16, %17
  br i1 %cmp11, label %cond.true12, label %cond.false14

cond.true12:                                      ; preds = %land.lhs.true
  %x13 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0
  %18 = load double, double* %x13, align 8
  br label %cond.end23

cond.false14:                                     ; preds = %land.lhs.true, %cond.end
  %y15 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1
  %19 = load double, double* %y15, align 8
  %z16 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2
  %20 = load double, double* %z16, align 8
  %cmp17 = fcmp ogt double %19, %20
  br i1 %cmp17, label %cond.true18, label %cond.false20

cond.true18:                                      ; preds = %cond.false14
  %y19 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1
  %21 = load double, double* %y19, align 8
  br label %cond.end22

cond.false20:                                     ; preds = %cond.false14
  %z21 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2
  %22 = load double, double* %z21, align 8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true18
  %cond = phi double [ %21, %cond.true18 ], [ %22, %cond.false20 ]
  br label %cond.end23

cond.end23:                                       ; preds = %cond.end22, %cond.true12
  %cond24 = phi double [ %18, %cond.true12 ], [ %cond, %cond.end22 ]
  store double %cond24, double* %p7, align 8
  %23 = load i32, i32* %depth.addr, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %depth.addr, align 4
  %cmp25 = icmp sgt i32 %inc, 5
  br i1 %cmp25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %cond.end23
  %24 = load i16*, i16** %Xi.addr, align 8
  %call27 = call double @erand48(i16* %24) #11
  %25 = load double, double* %p7, align 8
  %cmp28 = fcmp olt double %call27, %25
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  %26 = load double, double* %p7, align 8
  %div = fdiv double 1.000000e+00, %26
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp30, %struct.Vec* %f, double %div)
  %27 = bitcast %struct.Vec* %f to i8*
  %28 = bitcast %struct.Vec* %ref.tmp30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 24, i32 8, i1 false)
  br label %if.end31

if.else:                                          ; preds = %if.then26
  %29 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e = getelementptr inbounds %struct.Sphere, %struct.Sphere* %29, i32 0, i32 2
  %30 = bitcast %struct.Vec* %agg.result to i8*
  %31 = bitcast %struct.Vec* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false)
  br label %return

if.end31:                                         ; preds = %if.then29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %cond.end23
  %32 = load i32, i32* %depth.addr, align 4
  %cmp33 = icmp sgt i32 %32, 128
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %33 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e35 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %33, i32 0, i32 2
  %34 = bitcast %struct.Vec* %agg.result to i8*
  %35 = bitcast %struct.Vec* %e35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 24, i32 8, i1 false)
  br label %return

if.end36:                                         ; preds = %if.end32
  %36 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %refl = getelementptr inbounds %struct.Sphere, %struct.Sphere* %36, i32 0, i32 4
  %37 = load i32, i32* %refl, align 8
  %cmp37 = icmp eq i32 %37, 0
  br i1 %cmp37, label %if.then38, label %if.else75

if.then38:                                        ; preds = %if.end36
  %38 = load i16*, i16** %Xi.addr, align 8
  %call40 = call double @erand48(i16* %38) #11
  %mul = fmul double 0x401921FB54442D18, %call40
  store double %mul, double* %r1, align 8
  %39 = load i16*, i16** %Xi.addr, align 8
  %call42 = call double @erand48(i16* %39) #11
  store double %call42, double* %r2, align 8
  %40 = load double, double* %r2, align 8
  %call44 = call double @sqrt(double %40) #11
  store double %call44, double* %r2s, align 8
  %41 = bitcast %struct.Vec* %w to i8*
  %42 = bitcast %struct.Vec* %nl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %42, i64 24, i32 8, i1 false)
  %x48 = getelementptr inbounds %struct.Vec, %struct.Vec* %w, i32 0, i32 0
  %43 = load double, double* %x48, align 8
  %call49 = call double @fabs(double %43) #7
  %cmp50 = fcmp ogt double %call49, 1.000000e-01
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.then38
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp47, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  br label %cond.end53

cond.false52:                                     ; preds = %if.then38
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp47, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  call void @_ZN3VecrmERS_(%struct.Vec* sret %tmp54, %struct.Vec* %tmp47, %struct.Vec* dereferenceable(24) %w)
  %call55 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp54)
  %44 = bitcast %struct.Vec* %u to i8*
  %45 = bitcast %struct.Vec* %call55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 24, i32 8, i1 false)
  call void @_ZN3VecrmERS_(%struct.Vec* sret %v, %struct.Vec* %w, %struct.Vec* dereferenceable(24) %u)
  %46 = load double, double* %r1, align 8
  %call59 = call double @cos(double %46) #11
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp60, %struct.Vec* %u, double %call59)
  %47 = load double, double* %r2s, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp61, %struct.Vec* %tmp60, double %47)
  %48 = load double, double* %r1, align 8
  %call63 = call double @sin(double %48) #11
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp64, %struct.Vec* %v, double %call63)
  %49 = load double, double* %r2s, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp62, %struct.Vec* %tmp64, double %49)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %tmp65, %struct.Vec* %tmp61, %struct.Vec* dereferenceable(24) %ref.tmp62)
  %50 = load double, double* %r2, align 8
  %sub = fsub double 1.000000e+00, %50
  %call67 = call double @sqrt(double %sub) #11
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp66, %struct.Vec* %w, double %call67)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %tmp68, %struct.Vec* %tmp65, %struct.Vec* dereferenceable(24) %ref.tmp66)
  %call69 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp68)
  %51 = bitcast %struct.Vec* %d58 to i8*
  %52 = bitcast %struct.Vec* %call69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 24, i32 8, i1 false)
  %53 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e70 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %53, i32 0, i32 2
  %54 = bitcast %struct.Vec* %agg.tmp to i8*
  %55 = bitcast %struct.Vec* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 24, i32 8, i1 false)
  %56 = bitcast %struct.Vec* %agg.tmp74 to i8*
  %57 = bitcast %struct.Vec* %d58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 24, i32 8, i1 false)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %ref.tmp73, %struct.Vec* byval align 8 %agg.tmp, %struct.Vec* byval align 8 %agg.tmp74)
  %58 = load i32, i32* %depth.addr, align 4
  %59 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %ref.tmp72, %struct.Ray* dereferenceable(48) %ref.tmp73, i32 %58, i16* %59)
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret %ref.tmp71, %struct.Vec* %f, %struct.Vec* dereferenceable(24) %ref.tmp72)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %agg.result, %struct.Vec* %e70, %struct.Vec* dereferenceable(24) %ref.tmp71)
  br label %return

if.else75:                                        ; preds = %if.end36
  %60 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %refl76 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %60, i32 0, i32 4
  %61 = load i32, i32* %refl76, align 8
  %cmp77 = icmp eq i32 %61, 1
  br i1 %cmp77, label %if.then78, label %if.end90

if.then78:                                        ; preds = %if.else75
  %62 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e79 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %62, i32 0, i32 2
  %63 = bitcast %struct.Vec* %agg.tmp83 to i8*
  %64 = bitcast %struct.Vec* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 24, i32 8, i1 false)
  %65 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d85 = getelementptr inbounds %struct.Ray, %struct.Ray* %65, i32 0, i32 1
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp87, %struct.Vec* %n, double 2.000000e+00)
  %66 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d88 = getelementptr inbounds %struct.Ray, %struct.Ray* %66, i32 0, i32 1
  %call89 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %n, %struct.Vec* dereferenceable(24) %d88)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp86, %struct.Vec* %tmp87, double %call89)
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret %agg.tmp84, %struct.Vec* %d85, %struct.Vec* dereferenceable(24) %ref.tmp86)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %ref.tmp82, %struct.Vec* byval align 8 %agg.tmp83, %struct.Vec* byval align 8 %agg.tmp84)
  %67 = load i32, i32* %depth.addr, align 4
  %68 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %ref.tmp81, %struct.Ray* dereferenceable(48) %ref.tmp82, i32 %67, i16* %68)
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret %ref.tmp80, %struct.Vec* %f, %struct.Vec* dereferenceable(24) %ref.tmp81)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %agg.result, %struct.Vec* %e79, %struct.Vec* dereferenceable(24) %ref.tmp80)
  br label %return

if.end90:                                         ; preds = %if.else75
  br label %if.end91

if.end91:                                         ; preds = %if.end90
  %69 = bitcast %struct.Vec* %agg.tmp93 to i8*
  %70 = bitcast %struct.Vec* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 24, i32 8, i1 false)
  %71 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d95 = getelementptr inbounds %struct.Ray, %struct.Ray* %71, i32 0, i32 1
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp97, %struct.Vec* %n, double 2.000000e+00)
  %72 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d98 = getelementptr inbounds %struct.Ray, %struct.Ray* %72, i32 0, i32 1
  %call99 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %n, %struct.Vec* dereferenceable(24) %d98)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp96, %struct.Vec* %tmp97, double %call99)
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret %agg.tmp94, %struct.Vec* %d95, %struct.Vec* dereferenceable(24) %ref.tmp96)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %reflRay, %struct.Vec* byval align 8 %agg.tmp93, %struct.Vec* byval align 8 %agg.tmp94)
  %call101 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %n, %struct.Vec* dereferenceable(24) %nl)
  %cmp102 = fcmp ogt double %call101, 0.000000e+00
  %frombool = zext i1 %cmp102 to i8
  store i8 %frombool, i8* %into, align 1
  store double 1.000000e+00, double* %nc, align 8
  store double 1.500000e+00, double* %nt, align 8
  %73 = load i8, i8* %into, align 1
  %tobool = trunc i8 %73 to i1
  br i1 %tobool, label %cond.true106, label %cond.false108

cond.true106:                                     ; preds = %if.end91
  %74 = load double, double* %nc, align 8
  %75 = load double, double* %nt, align 8
  %div107 = fdiv double %74, %75
  br label %cond.end110

cond.false108:                                    ; preds = %if.end91
  %76 = load double, double* %nt, align 8
  %77 = load double, double* %nc, align 8
  %div109 = fdiv double %76, %77
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false108, %cond.true106
  %cond111 = phi double [ %div107, %cond.true106 ], [ %div109, %cond.false108 ]
  store double %cond111, double* %nnt, align 8
  %78 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d113 = getelementptr inbounds %struct.Ray, %struct.Ray* %78, i32 0, i32 1
  %call114 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %d113, %struct.Vec* dereferenceable(24) %nl)
  store double %call114, double* %ddn, align 8
  %79 = load double, double* %nnt, align 8
  %80 = load double, double* %nnt, align 8
  %mul116 = fmul double %79, %80
  %81 = load double, double* %ddn, align 8
  %82 = load double, double* %ddn, align 8
  %mul117 = fmul double %81, %82
  %sub118 = fsub double 1.000000e+00, %mul117
  %mul119 = fmul double %mul116, %sub118
  %sub120 = fsub double 1.000000e+00, %mul119
  store double %sub120, double* %cos2t, align 8
  %cmp121 = fcmp olt double %sub120, 0.000000e+00
  br i1 %cmp121, label %if.then122, label %if.end126

if.then122:                                       ; preds = %cond.end110
  %83 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e123 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %83, i32 0, i32 2
  %84 = load i32, i32* %depth.addr, align 4
  %85 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %ref.tmp125, %struct.Ray* dereferenceable(48) %reflRay, i32 %84, i16* %85)
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret %ref.tmp124, %struct.Vec* %f, %struct.Vec* dereferenceable(24) %ref.tmp125)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %agg.result, %struct.Vec* %e123, %struct.Vec* dereferenceable(24) %ref.tmp124)
  br label %return

if.end126:                                        ; preds = %cond.end110
  %86 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d128 = getelementptr inbounds %struct.Ray, %struct.Ray* %86, i32 0, i32 1
  %87 = load double, double* %nnt, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp129, %struct.Vec* %d128, double %87)
  %88 = load i8, i8* %into, align 1
  %tobool131 = trunc i8 %88 to i1
  %cond132 = select i1 %tobool131, i32 1, i32 -1
  %conv = sitofp i32 %cond132 to double
  %89 = load double, double* %ddn, align 8
  %90 = load double, double* %nnt, align 8
  %mul133 = fmul double %89, %90
  %91 = load double, double* %cos2t, align 8
  %call134 = call double @sqrt(double %91) #11
  %add = fadd double %mul133, %call134
  %mul135 = fmul double %conv, %add
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp130, %struct.Vec* %n, double %mul135)
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret %tmp136, %struct.Vec* %tmp129, %struct.Vec* dereferenceable(24) %ref.tmp130)
  %call137 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp136)
  %92 = bitcast %struct.Vec* %tdir to i8*
  %93 = bitcast %struct.Vec* %call137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %92, i8* %93, i64 24, i32 8, i1 false)
  %94 = load double, double* %nt, align 8
  %95 = load double, double* %nc, align 8
  %sub139 = fsub double %94, %95
  store double %sub139, double* %a, align 8
  %96 = load double, double* %nt, align 8
  %97 = load double, double* %nc, align 8
  %add141 = fadd double %96, %97
  store double %add141, double* %b, align 8
  %98 = load double, double* %a, align 8
  %99 = load double, double* %a, align 8
  %mul143 = fmul double %98, %99
  %100 = load double, double* %b, align 8
  %101 = load double, double* %b, align 8
  %mul144 = fmul double %100, %101
  %div145 = fdiv double %mul143, %mul144
  store double %div145, double* %R0, align 8
  %102 = load i8, i8* %into, align 1
  %tobool148 = trunc i8 %102 to i1
  br i1 %tobool148, label %cond.true149, label %cond.false151

cond.true149:                                     ; preds = %if.end126
  %103 = load double, double* %ddn, align 8
  %sub150 = fsub double -0.000000e+00, %103
  br label %cond.end153

cond.false151:                                    ; preds = %if.end126
  %call152 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %tdir, %struct.Vec* dereferenceable(24) %n)
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true149
  %cond154 = phi double [ %sub150, %cond.true149 ], [ %call152, %cond.false151 ]
  %sub155 = fsub double 1.000000e+00, %cond154
  store double %sub155, double* %c147, align 8
  %104 = load double, double* %R0, align 8
  %105 = load double, double* %R0, align 8
  %sub157 = fsub double 1.000000e+00, %105
  %106 = load double, double* %c147, align 8
  %mul158 = fmul double %sub157, %106
  %107 = load double, double* %c147, align 8
  %mul159 = fmul double %mul158, %107
  %108 = load double, double* %c147, align 8
  %mul160 = fmul double %mul159, %108
  %109 = load double, double* %c147, align 8
  %mul161 = fmul double %mul160, %109
  %110 = load double, double* %c147, align 8
  %mul162 = fmul double %mul161, %110
  %add163 = fadd double %104, %mul162
  store double %add163, double* %Re, align 8
  %111 = load double, double* %Re, align 8
  %sub165 = fsub double 1.000000e+00, %111
  store double %sub165, double* %Tr, align 8
  %112 = load double, double* %Re, align 8
  %mul167 = fmul double 5.000000e-01, %112
  %add168 = fadd double 2.500000e-01, %mul167
  store double %add168, double* %P, align 8
  %113 = load double, double* %Re, align 8
  %114 = load double, double* %P, align 8
  %div170 = fdiv double %113, %114
  store double %div170, double* %RP, align 8
  %115 = load double, double* %Tr, align 8
  %116 = load double, double* %P, align 8
  %sub172 = fsub double 1.000000e+00, %116
  %div173 = fdiv double %115, %sub172
  store double %div173, double* %TP, align 8
  %117 = load %struct.Sphere*, %struct.Sphere** %obj, align 8
  %e174 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %117, i32 0, i32 2
  %118 = load i32, i32* %depth.addr, align 4
  %cmp177 = icmp sgt i32 %118, 2
  br i1 %cmp177, label %cond.true178, label %cond.false189

cond.true178:                                     ; preds = %cond.end153
  %119 = load i16*, i16** %Xi.addr, align 8
  %call179 = call double @erand48(i16* %119) #11
  %120 = load double, double* %P, align 8
  %cmp180 = fcmp olt double %call179, %120
  br i1 %cmp180, label %cond.true181, label %cond.false183

cond.true181:                                     ; preds = %cond.true178
  %121 = load i32, i32* %depth.addr, align 4
  %122 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %tmp182, %struct.Ray* dereferenceable(48) %reflRay, i32 %121, i16* %122)
  %123 = load double, double* %RP, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp176, %struct.Vec* %tmp182, double %123)
  br label %cond.end188

cond.false183:                                    ; preds = %cond.true178
  %124 = bitcast %struct.Vec* %agg.tmp185 to i8*
  %125 = bitcast %struct.Vec* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %124, i8* %125, i64 24, i32 8, i1 false)
  %126 = bitcast %struct.Vec* %agg.tmp186 to i8*
  %127 = bitcast %struct.Vec* %tdir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %126, i8* %127, i64 24, i32 8, i1 false)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %ref.tmp184, %struct.Vec* byval align 8 %agg.tmp185, %struct.Vec* byval align 8 %agg.tmp186)
  %128 = load i32, i32* %depth.addr, align 4
  %129 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %tmp187, %struct.Ray* dereferenceable(48) %ref.tmp184, i32 %128, i16* %129)
  %130 = load double, double* %TP, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp176, %struct.Vec* %tmp187, double %130)
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false183, %cond.true181
  br label %cond.end197

cond.false189:                                    ; preds = %cond.end153
  %131 = load i32, i32* %depth.addr, align 4
  %132 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %tmp190, %struct.Ray* dereferenceable(48) %reflRay, i32 %131, i16* %132)
  %133 = load double, double* %Re, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp191, %struct.Vec* %tmp190, double %133)
  %134 = bitcast %struct.Vec* %agg.tmp194 to i8*
  %135 = bitcast %struct.Vec* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 24, i32 8, i1 false)
  %136 = bitcast %struct.Vec* %agg.tmp195 to i8*
  %137 = bitcast %struct.Vec* %tdir to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %136, i8* %137, i64 24, i32 8, i1 false)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %ref.tmp193, %struct.Vec* byval align 8 %agg.tmp194, %struct.Vec* byval align 8 %agg.tmp195)
  %138 = load i32, i32* %depth.addr, align 4
  %139 = load i16*, i16** %Xi.addr, align 8
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %tmp196, %struct.Ray* dereferenceable(48) %ref.tmp193, i32 %138, i16* %139)
  %140 = load double, double* %Tr, align 8
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp192, %struct.Vec* %tmp196, double %140)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %ref.tmp176, %struct.Vec* %tmp191, %struct.Vec* dereferenceable(24) %ref.tmp192)
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false189, %cond.end188
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret %ref.tmp175, %struct.Vec* %f, %struct.Vec* dereferenceable(24) %ref.tmp176)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %agg.result, %struct.Vec* %e174, %struct.Vec* dereferenceable(24) %ref.tmp175)
  br label %return

return:                                           ; preds = %cond.end197, %if.then122, %if.then78, %cond.end53, %if.then34, %if.else, %if.then
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr zeroext i1 @_Z9intersectRK3RayRdRi(%struct.Ray* dereferenceable(48) %r, double* dereferenceable(8) %t, i32* dereferenceable(4) %id) #0 comdat {
entry:
  %r.addr = alloca %struct.Ray*, align 8
  %t.addr = alloca double*, align 8
  %id.addr = alloca i32*, align 8
  %n = alloca double, align 8
  %d = alloca double, align 8
  %inf = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  store double* %t, double** %t.addr, align 8
  store i32* %id, i32** %id.addr, align 8
  store double 9.000000e+00, double* %n, align 8
  %0 = load double*, double** %t.addr, align 8
  store double 1.000000e+20, double* %0, align 8
  store double 1.000000e+20, double* %inf, align 8
  %1 = load double, double* %n, align 8
  %conv = fptosi double %1 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %idxprom
  %4 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %call = call double @_ZNK6Sphere9intersectERK3Ray(%struct.Sphere* %arrayidx, %struct.Ray* dereferenceable(48) %4)
  store double %call, double* %d, align 8
  %tobool1 = fcmp une double %call, 0.000000e+00
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load double, double* %d, align 8
  %6 = load double*, double** %t.addr, align 8
  %7 = load double, double* %6, align 8
  %cmp = fcmp olt double %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load double, double* %d, align 8
  %9 = load double*, double** %t.addr, align 8
  store double %8, double* %9, align 8
  %10 = load i32, i32* %i, align 4
  %11 = load i32*, i32** %id.addr, align 8
  store i32 %10, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load double*, double** %t.addr, align 8
  %13 = load double, double* %12, align 8
  %14 = load double, double* %inf, align 8
  %cmp2 = fcmp olt double %13, %14
  ret i1 %cmp2
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3VecplERKS_(%struct.Vec* noalias sret %agg.result, %struct.Vec* %this, %struct.Vec* dereferenceable(24) %b) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %add = fadd double %0, %2
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %add4 = fadd double %3, %5
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %add6 = fadd double %6, %8
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %add, double %add4, double %add6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3VecmiERKS_(%struct.Vec* noalias sret %agg.result, %struct.Vec* %this, %struct.Vec* dereferenceable(24) %b) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %sub = fsub double %0, %2
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %sub4 = fsub double %3, %5
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %sub6 = fsub double %6, %8
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %sub, double %sub4, double %sub6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %this) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %1 = load double, double* %x2, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %3 = load double, double* %y3, align 8
  %mul4 = fmul double %2, %3
  %add = fadd double %mul, %mul4
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %5 = load double, double* %z5, align 8
  %mul6 = fmul double %4, %5
  %add7 = fadd double %add, %mul6
  %call = call double @sqrt(double %add7) #11
  %div = fdiv double 1.000000e+00, %call
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp, %struct.Vec* %this1, double %div)
  %6 = bitcast %struct.Vec* %this1 to i8*
  %7 = bitcast %struct.Vec* %ref.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 24, i32 8, i1 false)
  ret %struct.Vec* %this1
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_ZNK3Vec3dotERKS_(%struct.Vec* %this, %struct.Vec* dereferenceable(24) %b) #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %mul = fmul double %0, %2
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %5
  %add = fadd double %mul, %mul4
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %mul6 = fmul double %6, %8
  %add7 = fadd double %add, %mul6
  ret double %add7
}

; Function Attrs: nounwind
declare double @erand48(i16*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZN3VecrmERS_(%struct.Vec* noalias sret %agg.result, %struct.Vec* %this, %struct.Vec* dereferenceable(24) %b) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %mul = fmul double %0, %2
  %z2 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %3 = load double, double* %z2, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %5
  %sub = fsub double %mul, %mul4
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %6 = load double, double* %z5, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8
  %mul6 = fmul double %6, %8
  %x7 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %9 = load double, double* %x7, align 8
  %10 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z8 = getelementptr inbounds %struct.Vec, %struct.Vec* %10, i32 0, i32 2
  %11 = load double, double* %z8, align 8
  %mul9 = fmul double %9, %11
  %sub10 = fsub double %mul6, %mul9
  %x11 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %12 = load double, double* %x11, align 8
  %13 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y12 = getelementptr inbounds %struct.Vec, %struct.Vec* %13, i32 0, i32 1
  %14 = load double, double* %y12, align 8
  %mul13 = fmul double %12, %14
  %y14 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %15 = load double, double* %y14, align 8
  %16 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x15 = getelementptr inbounds %struct.Vec, %struct.Vec* %16, i32 0, i32 0
  %17 = load double, double* %x15, align 8
  %mul16 = fmul double %15, %17
  %sub17 = fsub double %mul13, %mul16
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %sub, double %sub10, double %sub17)
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_ZN3RayC2E3VecS0_(%struct.Ray* %this, %struct.Vec* byval align 8 %o_, %struct.Vec* byval align 8 %d_) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %struct.Ray*, align 8
  store %struct.Ray* %this, %struct.Ray** %this.addr, align 8
  %this1 = load %struct.Ray*, %struct.Ray** %this.addr, align 8
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 0
  %0 = bitcast %struct.Vec* %o to i8*
  %1 = bitcast %struct.Vec* %o_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 24, i32 8, i1 false)
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 1
  %2 = bitcast %struct.Vec* %d to i8*
  %3 = bitcast %struct.Vec* %d_ to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_ZNK3Vec4multERKS_(%struct.Vec* noalias sret %agg.result, %struct.Vec* %this, %struct.Vec* dereferenceable(24) %b) #0 comdat align 2 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %mul = fmul double %0, %2
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1
  %5 = load double, double* %y3, align 8
  %mul4 = fmul double %3, %5
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2
  %8 = load double, double* %z5, align 8
  %mul6 = fmul double %6, %8
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.result, double %mul, double %mul4, double %mul6)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr double @_ZNK6Sphere9intersectERK3Ray(%struct.Sphere* %this, %struct.Ray* dereferenceable(48) %r) #0 comdat align 2 {
entry:
  %retval = alloca double, align 8
  %this.addr = alloca %struct.Sphere*, align 8
  %r.addr = alloca %struct.Ray*, align 8
  %op = alloca %struct.Vec, align 8
  %t = alloca double, align 8
  %eps = alloca double, align 8
  %b = alloca double, align 8
  %det = alloca double, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1
  %0 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %0, i32 0, i32 0
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret %op, %struct.Vec* %p, %struct.Vec* dereferenceable(24) %o)
  store double 1.000000e-04, double* %eps, align 8
  %1 = load %struct.Ray*, %struct.Ray** %r.addr, align 8
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i32 0, i32 1
  %call = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %op, %struct.Vec* dereferenceable(24) %d)
  store double %call, double* %b, align 8
  %2 = load double, double* %b, align 8
  %3 = load double, double* %b, align 8
  %mul = fmul double %2, %3
  %call2 = call double @_ZNK3Vec3dotERKS_(%struct.Vec* %op, %struct.Vec* dereferenceable(24) %op)
  %sub = fsub double %mul, %call2
  %rad = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0
  %4 = load double, double* %rad, align 8
  %rad3 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0
  %5 = load double, double* %rad3, align 8
  %mul4 = fmul double %4, %5
  %add = fadd double %sub, %mul4
  store double %add, double* %det, align 8
  %6 = load double, double* %det, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load double, double* %det, align 8
  %call5 = call double @sqrt(double %7) #11
  store double %call5, double* %det, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  %8 = load double, double* %b, align 8
  %9 = load double, double* %det, align 8
  %sub6 = fsub double %8, %9
  store double %sub6, double* %t, align 8
  %10 = load double, double* %eps, align 8
  %cmp7 = fcmp ogt double %sub6, %10
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load double, double* %t, align 8
  br label %cond.end12

cond.false:                                       ; preds = %if.end
  %12 = load double, double* %b, align 8
  %13 = load double, double* %det, align 8
  %add8 = fadd double %12, %13
  store double %add8, double* %t, align 8
  %14 = load double, double* %eps, align 8
  %cmp9 = fcmp ogt double %add8, %14
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.false
  %15 = load double, double* %t, align 8
  br label %cond.end

cond.false11:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false11, %cond.true10
  %cond = phi double [ %15, %cond.true10 ], [ 0.000000e+00, %cond.false11 ]
  br label %cond.end12

cond.end12:                                       ; preds = %cond.end, %cond.true
  %cond13 = phi double [ %11, %cond.true ], [ %cond, %cond.end ]
  store double %cond13, double* %retval, align 8
  br label %return

return:                                           ; preds = %cond.end12, %if.then
  %16 = load double, double* %retval, align 8
  ret double %16
}

; Function Attrs: noinline norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %samps = alloca i32, align 4
  %cam = alloca %struct.Ray, align 8
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp1 = alloca %struct.Vec, align 8
  %tmp = alloca %struct.Vec, align 8
  %cx = alloca %struct.Vec, align 8
  %cy = alloca %struct.Vec, align 8
  %tmp7 = alloca %struct.Vec, align 8
  %r = alloca %struct.Vec, align 8
  %c = alloca %struct.Vec*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %y = alloca i32, align 4
  %x = alloca i16, align 2
  %Xi = alloca [3 x i16], align 2
  %sy = alloca i32, align 4
  %i = alloca i32, align 4
  %sx = alloca i32, align 4
  %s = alloca i32, align 4
  %r1 = alloca double, align 8
  %dx = alloca double, align 8
  %r2 = alloca double, align 8
  %dy = alloca double, align 8
  %d73 = alloca %struct.Vec, align 8
  %tmp84 = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %tmp94 = alloca %struct.Vec, align 8
  %ref.tmp96 = alloca %struct.Vec, align 8
  %ref.tmp97 = alloca %struct.Vec, align 8
  %ref.tmp98 = alloca %struct.Ray, align 8
  %agg.tmp99 = alloca %struct.Vec, align 8
  %ref.tmp100 = alloca %struct.Vec, align 8
  %agg.tmp101 = alloca %struct.Vec, align 8
  %tmp104 = alloca %struct.Vec, align 8
  %ref.tmp107 = alloca %struct.Vec, align 8
  %ref.tmp109 = alloca %struct.Vec, align 8
  %tmp110 = alloca %struct.Vec, align 8
  %ref.tmp120 = alloca %struct.Vec, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %w, align 4
  store i32 768, i32* %h, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #12
  %div = sdiv i32 %call, 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %samps, align 4
  call void @_ZN3VecC2Eddd(%struct.Vec* %agg.tmp, double 5.000000e+01, double 5.200000e+01, double 2.956000e+02)
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp, double 0.000000e+00, double -4.261200e-02, double -1.000000e+00)
  %call2 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp)
  %3 = bitcast %struct.Vec* %agg.tmp1 to i8*
  %4 = bitcast %struct.Vec* %call2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 24, i32 8, i1 false)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %cam, %struct.Vec* byval align 8 %agg.tmp, %struct.Vec* byval align 8 %agg.tmp1)
  %5 = load i32, i32* %w, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 5.135000e-01
  %6 = load i32, i32* %h, align 4
  %conv4 = sitofp i32 %6 to double
  %div5 = fdiv double %mul, %conv4
  call void @_ZN3VecC2Eddd(%struct.Vec* %cx, double %div5, double 0.000000e+00, double 0.000000e+00)
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 1
  call void @_ZN3VecrmERS_(%struct.Vec* sret %tmp7, %struct.Vec* %cx, %struct.Vec* dereferenceable(24) %d)
  %call8 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %tmp7)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %cy, %struct.Vec* %call8, double 5.135000e-01)
  call void @_ZN3VecC2Eddd(%struct.Vec* %r, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %7 = load i32, i32* %w, align 4
  %8 = load i32, i32* %h, align 4
  %mul11 = mul nsw i32 %7, %8
  %9 = sext i32 %mul11 to i64
  %10 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %9, i64 24)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  %13 = select i1 %11, i64 -1, i64 %12
  %call12 = call i8* @_Znam(i64 %13) #13
  %14 = bitcast i8* %call12 to %struct.Vec*
  %isempty = icmp eq i64 %9, 0
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop

new.ctorloop:                                     ; preds = %cond.end
  %arrayctor.end = getelementptr inbounds %struct.Vec, %struct.Vec* %14, i64 %9
  br label %arrayctor.loop

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %struct.Vec* [ %14, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ]
  invoke void @_ZN3VecC2Eddd(%struct.Vec* %arrayctor.cur, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %struct.Vec, %struct.Vec* %arrayctor.cur, i64 1
  %arrayctor.done = icmp eq %struct.Vec* %arrayctor.next, %arrayctor.end
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop

arrayctor.cont:                                   ; preds = %cond.end, %invoke.cont
  store %struct.Vec* %14, %struct.Vec** %c, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %samps, align 4
  %mul13 = mul nsw i32 %16, 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %mul13)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc128, %arrayctor.cont
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %h, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body, label %for.end130

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %x, align 2
  %arrayinit.begin = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i64 0, i64 0
  store i16 0, i16* %arrayinit.begin, align 2
  %arrayinit.element = getelementptr inbounds i16, i16* %arrayinit.begin, i64 1
  store i16 0, i16* %arrayinit.element, align 2
  %arrayinit.element19 = getelementptr inbounds i16, i16* %arrayinit.element, i64 1
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %y, align 4
  %mul20 = mul nsw i32 %19, %20
  %21 = load i32, i32* %y, align 4
  %mul21 = mul nsw i32 %mul20, %21
  %conv22 = trunc i32 %mul21 to i16
  store i16 %conv22, i16* %arrayinit.element19, align 2
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc125, %for.body
  %22 = load i16, i16* %x, align 2
  %conv24 = zext i16 %22 to i32
  %23 = load i32, i32* %w, align 4
  %cmp25 = icmp slt i32 %conv24, %23
  br i1 %cmp25, label %for.body26, label %for.end127

for.body26:                                       ; preds = %for.cond23
  store i32 0, i32* %sy, align 4
  %24 = load i32, i32* %h, align 4
  %25 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %24, %25
  %sub29 = sub nsw i32 %sub, 1
  %26 = load i32, i32* %w, align 4
  %mul30 = mul nsw i32 %sub29, %26
  %27 = load i16, i16* %x, align 2
  %conv31 = zext i16 %27 to i32
  %add = add nsw i32 %mul30, %conv31
  store i32 %add, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc122, %for.body26
  %28 = load i32, i32* %sy, align 4
  %cmp33 = icmp slt i32 %28, 2
  br i1 %cmp33, label %for.body34, label %for.end124

for.body34:                                       ; preds = %for.cond32
  store i32 0, i32* %sx, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc118, %for.body34
  %29 = load i32, i32* %sx, align 4
  %cmp37 = icmp slt i32 %29, 2
  br i1 %cmp37, label %for.body38, label %for.end121

for.body38:                                       ; preds = %for.cond36
  store i32 0, i32* %s, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %for.body38
  %30 = load i32, i32* %s, align 4
  %31 = load i32, i32* %samps, align 4
  %cmp41 = icmp slt i32 %30, %31
  br i1 %cmp41, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond40
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i32 0, i32 0
  %call44 = call double @erand48(i16* %arraydecay) #11
  %mul45 = fmul double 2.000000e+00, %call44
  store double %mul45, double* %r1, align 8
  %32 = load double, double* %r1, align 8
  %cmp47 = fcmp olt double %32, 1.000000e+00
  br i1 %cmp47, label %cond.true48, label %cond.false51

cond.true48:                                      ; preds = %for.body42
  %33 = load double, double* %r1, align 8
  %call49 = call double @sqrt(double %33) #11
  %sub50 = fsub double %call49, 1.000000e+00
  br label %cond.end55

cond.false51:                                     ; preds = %for.body42
  %34 = load double, double* %r1, align 8
  %sub52 = fsub double 2.000000e+00, %34
  %call53 = call double @sqrt(double %sub52) #11
  %sub54 = fsub double 1.000000e+00, %call53
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false51, %cond.true48
  %cond56 = phi double [ %sub50, %cond.true48 ], [ %sub54, %cond.false51 ]
  store double %cond56, double* %dx, align 8
  %arraydecay58 = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i32 0, i32 0
  %call59 = call double @erand48(i16* %arraydecay58) #11
  %mul60 = fmul double 2.000000e+00, %call59
  store double %mul60, double* %r2, align 8
  %35 = load double, double* %r2, align 8
  %cmp62 = fcmp olt double %35, 1.000000e+00
  br i1 %cmp62, label %cond.true63, label %cond.false66

cond.true63:                                      ; preds = %cond.end55
  %36 = load double, double* %r2, align 8
  %call64 = call double @sqrt(double %36) #11
  %sub65 = fsub double %call64, 1.000000e+00
  br label %cond.end70

cond.false66:                                     ; preds = %cond.end55
  %37 = load double, double* %r2, align 8
  %sub67 = fsub double 2.000000e+00, %37
  %call68 = call double @sqrt(double %sub67) #11
  %sub69 = fsub double 1.000000e+00, %call68
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false66, %cond.true63
  %cond71 = phi double [ %sub65, %cond.true63 ], [ %sub69, %cond.false66 ]
  store double %cond71, double* %dy, align 8
  %38 = load i32, i32* %sx, align 4
  %conv74 = sitofp i32 %38 to double
  %add75 = fadd double %conv74, 5.000000e-01
  %39 = load double, double* %dx, align 8
  %add76 = fadd double %add75, %39
  %div77 = fdiv double %add76, 2.000000e+00
  %40 = load i16, i16* %x, align 2
  %conv78 = zext i16 %40 to i32
  %conv79 = sitofp i32 %conv78 to double
  %add80 = fadd double %div77, %conv79
  %41 = load i32, i32* %w, align 4
  %conv81 = sitofp i32 %41 to double
  %div82 = fdiv double %add80, %conv81
  %sub83 = fsub double %div82, 5.000000e-01
  call void @_ZNK3VecmlEd(%struct.Vec* sret %tmp84, %struct.Vec* %cx, double %sub83)
  %42 = load i32, i32* %sy, align 4
  %conv85 = sitofp i32 %42 to double
  %add86 = fadd double %conv85, 5.000000e-01
  %43 = load double, double* %dy, align 8
  %add87 = fadd double %add86, %43
  %div88 = fdiv double %add87, 2.000000e+00
  %44 = load i32, i32* %y, align 4
  %conv89 = sitofp i32 %44 to double
  %add90 = fadd double %div88, %conv89
  %45 = load i32, i32* %h, align 4
  %conv91 = sitofp i32 %45 to double
  %div92 = fdiv double %add90, %conv91
  %sub93 = fsub double %div92, 5.000000e-01
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp, %struct.Vec* %cy, double %sub93)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %tmp94, %struct.Vec* %tmp84, %struct.Vec* dereferenceable(24) %ref.tmp)
  %d95 = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 1
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %d73, %struct.Vec* %tmp94, %struct.Vec* dereferenceable(24) %d95)
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 0
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp100, %struct.Vec* %d73, double 1.400000e+02)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %agg.tmp99, %struct.Vec* %o, %struct.Vec* dereferenceable(24) %ref.tmp100)
  %call102 = call dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* %d73)
  %46 = bitcast %struct.Vec* %agg.tmp101 to i8*
  %47 = bitcast %struct.Vec* %call102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 24, i32 8, i1 false)
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* %ref.tmp98, %struct.Vec* byval align 8 %agg.tmp99, %struct.Vec* byval align 8 %agg.tmp101)
  %arraydecay103 = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i32 0, i32 0
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret %tmp104, %struct.Ray* dereferenceable(48) %ref.tmp98, i32 0, i16* %arraydecay103)
  %48 = load i32, i32* %samps, align 4
  %conv105 = sitofp i32 %48 to double
  %div106 = fdiv double 1.000000e+00, %conv105
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp97, %struct.Vec* %tmp104, double %div106)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %ref.tmp96, %struct.Vec* %r, %struct.Vec* dereferenceable(24) %ref.tmp97)
  %49 = bitcast %struct.Vec* %r to i8*
  %50 = bitcast %struct.Vec* %ref.tmp96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 24, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %cond.end70
  %51 = load i32, i32* %s, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond40

lpad:                                             ; preds = %arrayctor.loop
  %52 = landingpad { i8*, i32 }
          cleanup
  %53 = extractvalue { i8*, i32 } %52, 0
  store i8* %53, i8** %exn.slot, align 8
  %54 = extractvalue { i8*, i32 } %52, 1
  store i32 %54, i32* %ehselector.slot, align 4
  call void @_ZdaPv(i8* %call12) #14
  br label %eh.resume

for.end:                                          ; preds = %for.cond40
  %55 = load %struct.Vec*, %struct.Vec** %c, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom = sext i32 %56 to i64
  %arrayidx108 = getelementptr inbounds %struct.Vec, %struct.Vec* %55, i64 %idxprom
  %x111 = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 0
  %57 = load double, double* %x111, align 8
  %call112 = call double @_Z5clampd(double %57)
  %y113 = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 1
  %58 = load double, double* %y113, align 8
  %call114 = call double @_Z5clampd(double %58)
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 2
  %59 = load double, double* %z, align 8
  %call115 = call double @_Z5clampd(double %59)
  call void @_ZN3VecC2Eddd(%struct.Vec* %tmp110, double %call112, double %call114, double %call115)
  call void @_ZNK3VecmlEd(%struct.Vec* sret %ref.tmp109, %struct.Vec* %tmp110, double 2.500000e-01)
  call void @_ZNK3VecplERKS_(%struct.Vec* sret %ref.tmp107, %struct.Vec* %arrayidx108, %struct.Vec* dereferenceable(24) %ref.tmp109)
  %60 = load %struct.Vec*, %struct.Vec** %c, align 8
  %61 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %61 to i64
  %arrayidx117 = getelementptr inbounds %struct.Vec, %struct.Vec* %60, i64 %idxprom116
  %62 = bitcast %struct.Vec* %arrayidx117 to i8*
  %63 = bitcast %struct.Vec* %ref.tmp107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 24, i32 8, i1 false)
  br label %for.inc118

for.inc118:                                       ; preds = %for.end
  %64 = load i32, i32* %sx, align 4
  %inc119 = add nsw i32 %64, 1
  store i32 %inc119, i32* %sx, align 4
  call void @_ZN3VecC2Eddd(%struct.Vec* %ref.tmp120, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %65 = bitcast %struct.Vec* %r to i8*
  %66 = bitcast %struct.Vec* %ref.tmp120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 24, i32 8, i1 false)
  br label %for.cond36

for.end121:                                       ; preds = %for.cond36
  br label %for.inc122

for.inc122:                                       ; preds = %for.end121
  %67 = load i32, i32* %sy, align 4
  %inc123 = add nsw i32 %67, 1
  store i32 %inc123, i32* %sy, align 4
  br label %for.cond32

for.end124:                                       ; preds = %for.cond32
  br label %for.inc125

for.inc125:                                       ; preds = %for.end124
  %68 = load i16, i16* %x, align 2
  %inc126 = add i16 %68, 1
  store i16 %inc126, i16* %x, align 2
  br label %for.cond23

for.end127:                                       ; preds = %for.cond23
  br label %for.inc128

for.inc128:                                       ; preds = %for.end127
  %69 = load i32, i32* %y, align 4
  %inc129 = add nsw i32 %69, 1
  store i32 %inc129, i32* %y, align 4
  br label %for.cond

for.end130:                                       ; preds = %for.cond
  %70 = load i32, i32* %retval, align 4
  ret i32 %70

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val131 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val131
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #6

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin
declare noalias i8* @_Znam(i64) #8

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #10

; Function Attrs: noinline nounwind uwtable
define linkonce_odr double @_Z5clampd(double %x) #1 comdat {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %cmp1 = fcmp ogt double %1, 1.000000e+00
  br i1 %cmp1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.false
  br label %cond.end

cond.false3:                                      ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond = phi double [ 1.000000e+00, %cond.true2 ], [ %2, %cond.false3 ]
  br label %cond.end4

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ]
  ret double %cond5
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { builtin }
attributes #14 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
