void main() {
  __asm__("callq .kernel_syrk_StrictFP");
  __asm__(".kernel_syrk_StrictFP:");
}
