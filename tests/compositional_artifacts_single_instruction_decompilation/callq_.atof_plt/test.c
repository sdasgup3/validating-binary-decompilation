void main() {
  __asm__("callq .atof_plt");
  __asm__(".atof_plt:");
}
