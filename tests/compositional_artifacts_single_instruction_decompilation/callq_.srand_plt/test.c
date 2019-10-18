void main() {
  __asm__("callq .srand_plt");
  __asm__(".srand_plt:");
}
