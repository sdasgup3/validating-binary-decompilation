void main() {
  __asm__("callq .heap_adjust");
  __asm__(".heap_adjust:");
}
