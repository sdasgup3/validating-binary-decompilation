void main() {
  __asm__("callq .fprintf_plt");
  __asm__(".fprintf_plt:");
}
