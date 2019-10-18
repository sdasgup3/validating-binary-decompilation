void main() {
  __asm__("callq .sqrt_plt");
  __asm__(".sqrt_plt:");
}
