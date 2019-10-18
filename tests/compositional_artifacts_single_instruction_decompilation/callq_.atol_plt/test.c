void main() {
  __asm__("callq .atol_plt");
  __asm__(".atol_plt:");
}
