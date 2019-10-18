void main() {
  __asm__("callq .ungetc_plt");
  __asm__(".ungetc_plt:");
}
