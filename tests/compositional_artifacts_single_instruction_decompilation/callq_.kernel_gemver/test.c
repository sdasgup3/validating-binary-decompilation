void main() {
  __asm__("callq .kernel_gemver");
  __asm__(".kernel_gemver:");
}
