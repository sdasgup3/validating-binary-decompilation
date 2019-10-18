void main() {
  __asm__("callq .kernel_mvt");
  __asm__(".kernel_mvt:");
}
