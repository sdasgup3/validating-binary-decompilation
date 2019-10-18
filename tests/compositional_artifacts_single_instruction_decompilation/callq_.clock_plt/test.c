void main() {
  __asm__("callq .clock_plt");
  __asm__(".clock_plt:");
}
