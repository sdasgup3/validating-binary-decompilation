void main() {
  __asm__("callq .log_plt");
  __asm__(".log_plt:");
}
