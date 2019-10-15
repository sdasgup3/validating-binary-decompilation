void main() {
  __asm__("callq .malloc_plt");
  __asm__(".malloc_plt:");
}
