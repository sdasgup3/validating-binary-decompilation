void main() {
  __asm__("callq .strcpy_plt");
  __asm__(".strcpy_plt:");
}
