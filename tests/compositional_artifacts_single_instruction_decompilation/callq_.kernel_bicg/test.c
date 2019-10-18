void main() {
  __asm__("callq .kernel_bicg");
  __asm__(".kernel_bicg:");
}
