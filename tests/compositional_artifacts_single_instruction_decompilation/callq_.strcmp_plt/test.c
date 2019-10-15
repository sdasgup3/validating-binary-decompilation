void main() {
  __asm__("callq .strcmp_plt");
  __asm__(".strcmp_plt:");
}
