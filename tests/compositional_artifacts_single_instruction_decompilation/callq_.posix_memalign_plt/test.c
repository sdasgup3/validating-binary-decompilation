void main() {
  __asm__("callq .posix_memalign_plt");
  __asm__(".posix_memalign_plt:");
}
