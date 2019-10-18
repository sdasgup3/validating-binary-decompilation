void main() {
  __asm__("callq .kernel_gemm_StrictFP");
  __asm__(".kernel_gemm_StrictFP:");
}
