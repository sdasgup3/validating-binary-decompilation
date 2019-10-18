void main() {
  __asm__("callq .getchar_plt");
  __asm__(".getchar_plt:");
}
