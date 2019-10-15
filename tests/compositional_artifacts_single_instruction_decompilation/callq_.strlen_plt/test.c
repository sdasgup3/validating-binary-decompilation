void main() {
  __asm__("callq .strlen_plt");
  __asm__(".strlen_plt:");
}
