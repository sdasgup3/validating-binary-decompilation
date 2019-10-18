void main() {
  __asm__("callq .atan_plt");
  __asm__(".atan_plt:");
}
