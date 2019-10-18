void main() {
  __asm__("callq .exit_plt");
  __asm__(".exit_plt:");
}
