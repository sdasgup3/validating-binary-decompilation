void main() {
  __asm__("callq .xmalloc");
  __asm__(".xmalloc:");
}
