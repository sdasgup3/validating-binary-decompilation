void main() {
  __asm__("callq .kernel_syrk");
  __asm__(".kernel_syrk:");
}
