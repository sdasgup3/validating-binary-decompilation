void main() {
  __asm__("callq .lrand48_plt");
  __asm__(".lrand48_plt:");
}
