void main() {
  __asm__("callq .printf_plt");
  __asm__(".printf_plt:");
}
