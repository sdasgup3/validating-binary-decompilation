void main() {
  __asm__("callq .fflush_plt");
  __asm__(".fflush_plt:");
}
