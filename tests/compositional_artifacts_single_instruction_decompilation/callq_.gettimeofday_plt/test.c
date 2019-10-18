void main() {
  __asm__("callq .gettimeofday_plt");
  __asm__(".gettimeofday_plt:");
}
