void main() {
  __asm__("callq .free_plt");
  __asm__(".free_plt:");
}
