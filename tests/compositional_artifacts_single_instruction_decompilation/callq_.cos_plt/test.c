void main() {
  __asm__("callq .cos_plt");
  __asm__(".cos_plt:");
}
