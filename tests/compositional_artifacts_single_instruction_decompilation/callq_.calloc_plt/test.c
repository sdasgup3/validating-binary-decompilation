void main() {
  __asm__("callq .calloc_plt");
  __asm__(".calloc_plt:");
}
