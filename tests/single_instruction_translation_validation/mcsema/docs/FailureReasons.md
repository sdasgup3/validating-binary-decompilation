# KLI Failures


### Register Instructions
Total supported_decompilation_register.txt: 730
Pass:                                       421

Exluded:
  R1:                                       111
  R2:                                        14
  R3/R4/R5/R6/R7:                            3/25/2/2/18
  R8:                                        129 
  R10                                         5
  =================================================
                                            309


### Reasons/Explanations
  - R1 (111): Kast printer of LLVM semantics does not support handling vector types
  ```
  cat docs/kliFailR.log | parallel grep -l \"KAST printer: missing type\" register-variants/{}/Output/test-lstate.out
  ```
  - R2 (14): Kast parser not supporting fp operator
  ```
     cat docs/kliFailR.log | parallel grep -l \"KAST printer: missing fp binary operators\" register-variants/{}/Output/test-lstate.out
  ```
  - R3 : sitofp missing
  - R4 : ashr missing
  ```
  cat docs/kliFailR.log | parallel grep -l \"Scanner error: unexpected character sequence \'a\'\" register-variants/{}/Output/test-lstate.out
state.out
  ```
  - R5: (declare-fun byte (Int Int Int) AbstractValue) supplied sort is UndefVal") unknown
  - R6 : fp missing
  ```
  cat docs/kliFailR.log | parallel grep -l \"Scanner error: unexpected character sequence \'f\'\" register-variants/{}/Output/test-lstate.out
state.out
  ```
  - R7: remill_error
  ```
  cat docs/kliFailR.log | parallel grep -l \"remill_error\" register-variants/{}/Output/test-lstate.out
  ```
  - R8: unsupported intrinsics
  ```
  cat docs/kliFailR.log | parallel grep -l \"undefined value\" register-variants/{}/Output/test-lstate.out
  ```

  - R9: Unsupported switch instruction as terminator in KAST parser
  - R10: Unsupported fcmp in KAST parser
  ```
  cat docs/kliFailR.log | parallel grep -l \"missing instruction\" register-variants/{}/Output/test-lstate.out
  ```


  - E1 (40) : Scanner error on ::bitset --> replaced by __bitset (check declutter script)
  ```
     cat docs/kliFailR.log | parallel grep -l \"Scanner error: unexpected character sequence \':\'\" register-variants/{}/Output/test-lstate.out
  ```

  - E2 (14) Adding dummy defintions for remit_atomic_begin/end

### R7
```
comisd_xmm_xmm
comiss_xmm_xmm
divb_r8
divb_rh
divl_r32
divq_r64
divw_r16
idivb_r8
idivb_rh
idivl_r32
idivq_r64
idivw_r16
ucomisd_xmm_xmm
ucomiss_xmm_xmm
vcomisd_xmm_xmm
vcomiss_xmm_xmm
vucomisd_xmm_xmm
vucomiss_xmm_xmm
```

### R6
```
cvtps2pd_xmm_xmm
vcvtps2pd_ymm_xmm

```

### R5
```
psllq_xmm_xmm
psrlq_xmm_xmm
```

### R3
```
cvtdq2pd_xmm_xmm
cvtsi2sdl_xmm_r32
cvtsi2sdq_xmm_r64
```

### R4
```
imulb_r8
imulb_rh
imull_r32
imull_r32_r32
imulw_r16
imulw_r16_r16
movsbl_r32_r8
movsbl_r32_rh
movsbq_r64_r8
movsbw_r16_r8
movsbw_r16_rh
movslq_r64_r32
movswl_r32_r16
movswq_r64_r16
cqto
sarb_r8_cl
sarb_r8_one
sarb_rh_cl
sarb_rh_one
sarl_r32_cl
sarl_r32_one
sarq_r64_cl
sarq_r64_one
sarw_r16_cl
sarw_r16_one
```

#### R10
```
maxsd_xmm_xmm
minsd_xmm_xmm
paddusw_xmm_xmm
vmaxsd_xmm_xmm_xmm
vminsd_xmm_xmm_xmm
```

#### R2
```
addsd_xmm_xmm
divsd_xmm_xmm
mulsd_xmm_xmm
subsd_xmm_xmm
vaddsd_xmm_xmm_xmm
vdivsd_xmm_xmm_xmm
vfmadd132sd_xmm_xmm_xmm
vfmadd213sd_xmm_xmm_xmm
vfmadd231sd_xmm_xmm_xmm
vfmsub132sd_xmm_xmm_xmm
vfmsub213sd_xmm_xmm_xmm
vfmsub231sd_xmm_xmm_xmm
vmulsd_xmm_xmm_xmm
vsubsd_xmm_xmm_xmm
```


#### R1
  ```
addpd_xmm_xmm
addps_xmm_xmm
addss_xmm_xmm
cvtsd2ss_xmm_xmm
cvtsi2ssl_xmm_r32
cvtsi2ssq_xmm_r64
cvtss2sd_xmm_xmm
divpd_xmm_xmm
divps_xmm_xmm
divss_xmm_xmm
maxss_xmm_xmm
minss_xmm_xmm
movapd_xmm_xmm
movaps_xmm_xmm
movss_xmm_xmm
movupd_xmm_xmm
movups_xmm_xmm
mulpd_xmm_xmm
mulps_xmm_xmm
mulss_xmm_xmm
paddq_xmm_xmm
psubq_xmm_xmm
pxor_xmm_xmm
subpd_xmm_xmm
subps_xmm_xmm
subss_xmm_xmm
unpcklps_xmm_xmm
vaddpd_xmm_xmm_xmm
vaddpd_ymm_ymm_ymm
vaddps_xmm_xmm_xmm
vaddps_ymm_ymm_ymm
vaddss_xmm_xmm_xmm
vandnpd_xmm_xmm_xmm
vandnpd_ymm_ymm_ymm
vandnps_xmm_xmm_xmm
vandnps_ymm_ymm_ymm
vandpd_xmm_xmm_xmm
vandpd_ymm_ymm_ymm
vandps_xmm_xmm_xmm
vandps_ymm_ymm_ymm
vcvtdq2pd_xmm_xmm
vcvtdq2ps_xmm_xmm
vcvtpd2ps_xmm_xmm
vcvtps2pd_xmm_xmm
vcvtsd2ss_xmm_xmm_xmm
vcvtsi2sdl_xmm_xmm_r32
vcvtsi2sdq_xmm_xmm_r64
vcvtsi2ssl_xmm_xmm_r32
vcvtsi2ssq_xmm_xmm_r64
vcvtss2sd_xmm_xmm_xmm
vdivpd_xmm_xmm_xmm
vdivpd_ymm_ymm_ymm
vdivps_xmm_xmm_xmm
vdivps_ymm_ymm_ymm
vdivss_xmm_xmm_xmm
vmaxss_xmm_xmm_xmm
vminss_xmm_xmm_xmm
vmovapd_xmm_xmm
vmovapd_ymm_ymm
vmovaps_xmm_xmm
vmovaps_ymm_ymm
vmovd_xmm_r32
vmovddup_xmm_xmm
vmovlhps_xmm_xmm_xmm
vmovq_xmm_r64
vmovq_xmm_xmm
vmovsd_xmm_xmm_xmm
vmovss_xmm_xmm_xmm
vmovupd_xmm_xmm
vmovupd_ymm_ymm
vmovups_xmm_xmm
vmovups_ymm_ymm
vmulpd_xmm_xmm_xmm
vmulpd_ymm_ymm_ymm
vmulps_xmm_xmm_xmm
vmulps_ymm_ymm_ymm
vmulss_xmm_xmm_xmm
vorpd_xmm_xmm_xmm
vorpd_ymm_ymm_ymm
vorps_xmm_xmm_xmm
vorps_ymm_ymm_ymm
vpaddq_xmm_xmm_xmm
vpaddq_ymm_ymm_ymm
vpand_xmm_xmm_xmm
vpand_ymm_ymm_ymm
vpandn_xmm_xmm_xmm
vpandn_ymm_ymm_ymm
vpcmpeqd_xmm_xmm_xmm
vpcmpeqq_xmm_xmm_xmm
vpcmpgtd_xmm_xmm_xmm
vpcmpgtq_xmm_xmm_xmm
vpor_xmm_xmm_xmm
vpor_ymm_ymm_ymm
vpsllq_xmm_xmm_xmm
vpsrlq_xmm_xmm_xmm
vpsubd_xmm_xmm_xmm
vpsubq_xmm_xmm_xmm
vpxor_xmm_xmm_xmm
vpxor_ymm_ymm_ymm
vsubpd_xmm_xmm_xmm
vsubpd_ymm_ymm_ymm
vsubps_xmm_xmm_xmm
vsubps_ymm_ymm_ymm
vsubss_xmm_xmm_xmm
vunpckhpd_xmm_xmm_xmm
vunpcklpd_xmm_xmm_xmm
vunpcklps_xmm_xmm_xmm
vxorpd_xmm_xmm_xmm
vxorpd_ymm_ymm_ymm
vxorps_xmm_xmm_xmm
vxorps_ymm_ymm_ymm
```
#### R8
```
bsfl_r32_r32
bsfq_r64_r64
bsfw_r16_r16
bsrl_r32_r32
bsrq_r64_r64
bsrw_r16_r16
bswap_r32
bswap_r64
cmovnsw_r16_r16
cvtdq2ps_xmm_xmm
cvtpd2dq_xmm_xmm
cvtpd2ps_xmm_xmm
cvtps2dq_xmm_xmm
cvtsd2si_r32_xmm
cvtsd2si_r64_xmm
cvtss2si_r32_xmm
cvtss2si_r64_xmm
cvttpd2dq_xmm_xmm
cvttps2dq_xmm_xmm
cvttsd2si_r32_xmm
cvttsd2si_r64_xmm
cvttss2si_r32_xmm
cvttss2si_r64_xmm
lzcntl_r32_r32
lzcntq_r64_r64
lzcntw_r16_r16
maxps_xmm_xmm
minps_xmm_xmm
pabsb_xmm_xmm
pabsd_xmm_xmm
pabsw_xmm_xmm
packssdw_xmm_xmm
packsswb_xmm_xmm
packuswb_xmm_xmm
paddsb_xmm_xmm
paddsw_xmm_xmm
paddusb_xmm_xmm
pavgb_xmm_xmm
pavgw_xmm_xmm
pcmpeqb_xmm_xmm
pcmpeqd_xmm_xmm
pcmpeqw_xmm_xmm
pcmpgtb_xmm_xmm
pcmpgtd_xmm_xmm
pcmpgtw_xmm_xmm
phaddd_xmm_xmm
phaddsw_xmm_xmm
phaddw_xmm_xmm
phsubd_xmm_xmm
phsubw_xmm_xmm
pmaddubsw_xmm_xmm
pmaddwd_xmm_xmm
pmaxsw_xmm_xmm
pmaxub_xmm_xmm
pminsw_xmm_xmm
pminub_xmm_xmm
pmovmskb_r32_xmm
pmovmskb_r64_xmm
pmulhrsw_xmm_xmm
pmulhuw_xmm_xmm
pmulhw_xmm_xmm
pmullw_xmm_xmm
psadbw_xmm_xmm
pshufb_xmm_xmm
psignb_xmm_xmm
psignd_xmm_xmm
psignw_xmm_xmm
pslld_xmm_xmm
psllw_xmm_xmm
psrad_xmm_xmm
psraw_xmm_xmm
psrld_xmm_xmm
psrlw_xmm_xmm
psubusb_xmm_xmm
psubusw_xmm_xmm
punpckhbw_xmm_xmm
punpckhdq_xmm_xmm
punpckhwd_xmm_xmm
punpcklbw_xmm_xmm
punpckldq_xmm_xmm
punpcklwd_xmm_xmm
sqrtsd_xmm_xmm
sqrtss_xmm_xmm
tzcntl_r32_r32
tzcntq_r64_r64
tzcntw_r16_r16
vcvtdq2ps_ymm_ymm
vcvtpd2dq_xmm_xmm
vcvtpd2dq_xmm_ymm
vcvtpd2ps_xmm_ymm
vcvtps2dq_xmm_xmm
vcvtps2dq_ymm_ymm
vcvtsd2si_r32_xmm
vcvtsd2si_r64_xmm
vcvtss2si_r32_xmm
vcvtss2si_r64_xmm
vcvttpd2dq_xmm_xmm
vcvttpd2dq_xmm_ymm
vcvttps2dq_xmm_xmm
vcvttps2dq_ymm_ymm
vcvttsd2si_r32_xmm
vcvttsd2si_r64_xmm
vcvttss2si_r32_xmm
vcvttss2si_r64_xmm
vpackuswb_xmm_xmm_xmm
vpackuswb_ymm_ymm_ymm
vpbroadcastb_ymm_xmm
vpcmpeqb_xmm_xmm_xmm
vpcmpeqb_ymm_ymm_ymm
vpcmpeqd_ymm_ymm_ymm
vpcmpeqq_ymm_ymm_ymm
vpcmpeqw_xmm_xmm_xmm
vpcmpeqw_ymm_ymm_ymm
vpcmpgtb_xmm_xmm_xmm
vpcmpgtb_ymm_ymm_ymm
vpcmpgtd_ymm_ymm_ymm
vpcmpgtq_ymm_ymm_ymm
vpcmpgtw_xmm_xmm_xmm
vpcmpgtw_ymm_ymm_ymm
vpmovmskb_r32_xmm
vpmovmskb_r32_ymm
vpmovmskb_r64_xmm
vpmovmskb_r64_ymm
vpsadbw_xmm_xmm_xmm
vpsadbw_ymm_ymm_ymm
vpsllq_ymm_ymm_xmm
vpsrlq_ymm_ymm_xmm
vsqrtsd_xmm_xmm_xmm
vsqrtss_xmm_xmm_xmm
```


#### E2
```
xaddq_r64_r64
cmpxchgl_r32_r32
cmpxchgb_rh_r8
cmpxchgb_rh_rh
xaddb_rh_rh
cmpxchgb_r8_r8
xaddw_r16_r16
cmpxchgq_r64_r64
xaddb_r8_rh
xaddl_r32_r32
cmpxchgb_r8_rh
cmpxchgw_r16_r16
xaddb_r8_r8
xaddb_rh_r8
```
