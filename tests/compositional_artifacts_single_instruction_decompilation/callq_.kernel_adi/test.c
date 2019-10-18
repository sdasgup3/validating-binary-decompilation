void main() {
  __asm__("callq .kernel_adi");
  __asm__(".kernel_adi:");
}
