void main() {
  __asm__("callq .kernel_gemm");
  __asm__(".kernel_gemm:");
}
