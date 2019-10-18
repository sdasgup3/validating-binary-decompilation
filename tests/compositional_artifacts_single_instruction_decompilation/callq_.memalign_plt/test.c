void main() {
  __asm__("callq .memalign_plt");
  __asm__(".memalign_plt:");
}
