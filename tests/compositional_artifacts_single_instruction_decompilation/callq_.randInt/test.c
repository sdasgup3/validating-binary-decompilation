void main() {
  __asm__("callq .randInt");
  __asm__(".randInt:");
}
