void main() {
  __asm__("callq .kernel_jacobi_1d_imper");
  __asm__(".kernel_jacobi_1d_imper:");
}
