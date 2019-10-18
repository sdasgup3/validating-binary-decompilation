void main() {
  __asm__("callq .strncmp_plt");
  __asm__(".strncmp_plt:");
}
