void main() {
  __asm__("callq .pthread_join_plt");
  __asm__(".pthread_join_plt:");
}
