void main() {
  __asm__("callq .tan_plt");
  __asm__(".tan_plt:");
}
