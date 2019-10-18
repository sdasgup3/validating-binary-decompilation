void main() {
  __asm__("callq .kernel_symm");
  __asm__(".kernel_symm:");
}
