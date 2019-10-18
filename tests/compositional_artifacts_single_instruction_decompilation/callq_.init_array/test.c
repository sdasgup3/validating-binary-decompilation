void main() {
  __asm__("callq .init_array");
  __asm__(".init_array:");
}
