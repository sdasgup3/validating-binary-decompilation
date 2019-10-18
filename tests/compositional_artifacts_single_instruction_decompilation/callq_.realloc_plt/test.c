void main() {
  __asm__("callq .realloc_plt");
  __asm__(".realloc_plt:");
}
