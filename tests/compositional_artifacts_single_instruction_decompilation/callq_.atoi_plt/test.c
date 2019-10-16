void main() {
  __asm__("callq .atoi_plt");
  __asm__(".atoi_plt:");
}
