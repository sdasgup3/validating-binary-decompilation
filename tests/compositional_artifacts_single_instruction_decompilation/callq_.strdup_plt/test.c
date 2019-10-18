void main() {
  __asm__("callq .strdup_plt");
  __asm__(".strdup_plt:");
}
