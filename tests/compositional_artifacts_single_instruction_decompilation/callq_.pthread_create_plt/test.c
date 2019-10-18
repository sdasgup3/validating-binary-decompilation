void main() {
  __asm__("callq .pthread_create_plt");
  __asm__(".pthread_create_plt:");
}
