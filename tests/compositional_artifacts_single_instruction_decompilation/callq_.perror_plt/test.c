void main() {
  __asm__("callq .perror_plt");
  __asm__(".perror_plt:");
}
