void main() {
  __asm__("callq .pow_plt");
  __asm__(".pow_plt:");
}
