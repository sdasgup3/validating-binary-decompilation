void main() {
  __asm__("callq .abort_plt");
  __asm__(".abort_plt:");
}
