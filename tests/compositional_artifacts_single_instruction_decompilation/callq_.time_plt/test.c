void main() {
  __asm__("callq .time_plt");
  __asm__(".time_plt:");
}
