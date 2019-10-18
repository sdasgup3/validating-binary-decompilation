void main() {
  __asm__("callq .fputs_plt");
  __asm__(".fputs_plt:");
}
