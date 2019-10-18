void main() {
  __asm__("callq .strcat_plt");
  __asm__(".strcat_plt:");
}
