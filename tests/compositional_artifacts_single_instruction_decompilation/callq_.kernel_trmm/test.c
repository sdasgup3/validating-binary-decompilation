void main() {
  __asm__("callq .kernel_trmm");
  __asm__(".kernel_trmm:");
}
