void main() {
  __asm__("callq .Error");
  __asm__(".Error:");
}
