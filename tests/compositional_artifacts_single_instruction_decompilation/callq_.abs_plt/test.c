void main() {
  __asm__("callq .abs_plt");
  __asm__(".abs_plt:");
}
