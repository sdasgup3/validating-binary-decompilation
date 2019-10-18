void main() {
  __asm__("callq .fwrite_plt");
  __asm__(".fwrite_plt:");
}
