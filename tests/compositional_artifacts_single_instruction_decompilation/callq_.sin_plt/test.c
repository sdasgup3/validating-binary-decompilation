void main() {
  __asm__("callq .sin_plt");
  __asm__(".sin_plt:");
}
