void main() {
  __asm__("callq .exp_plt");
  __asm__(".exp_plt:");
}
