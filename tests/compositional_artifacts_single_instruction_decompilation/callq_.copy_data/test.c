void main() {
  __asm__("callq .copy_data");
  __asm__(".copy_data:");
}
