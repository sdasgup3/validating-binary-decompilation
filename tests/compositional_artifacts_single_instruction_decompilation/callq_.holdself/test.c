void main() {
  __asm__("callq .holdself");
  __asm__(".holdself:");
}
