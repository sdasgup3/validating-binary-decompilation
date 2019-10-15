void main() {
  __asm__("callq .foo");
  __asm__(".foo:");
}
