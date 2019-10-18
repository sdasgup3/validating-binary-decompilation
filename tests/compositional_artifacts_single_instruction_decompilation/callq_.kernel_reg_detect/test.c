void main() {
  __asm__("callq .kernel_reg_detect");
  __asm__(".kernel_reg_detect:");
}
