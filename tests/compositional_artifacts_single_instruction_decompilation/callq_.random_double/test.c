void main() {
  __asm__("callq .random_double");
  __asm__(".random_double:");
}
