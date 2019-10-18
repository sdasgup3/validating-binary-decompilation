void main() {
  __asm__("callq .random_plt");
  __asm__(".random_plt:");
}
