void main() {
  __asm__("callq .sprintf_plt");
  __asm__(".sprintf_plt:");
}
