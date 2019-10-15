void main() {
  __asm__("callq .memcpy_plt");
  __asm__(".memcpy_plt:");
}
