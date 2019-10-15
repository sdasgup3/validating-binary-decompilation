void main() {
  __asm__("callq .read_plt");
  __asm__(".read_plt:");
}
