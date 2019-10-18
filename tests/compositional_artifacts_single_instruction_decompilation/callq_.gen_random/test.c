void main() {
  __asm__("callq .gen_random");
  __asm__(".gen_random:");
}
