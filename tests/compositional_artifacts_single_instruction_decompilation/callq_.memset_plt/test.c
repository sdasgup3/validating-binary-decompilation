void main() {
  __asm__("callq .memset_plt");
  __asm__(".memset_plt:");
}
