void main() {
  __asm__("callq .kernel_cholesky");
  __asm__(".kernel_cholesky:");
}
