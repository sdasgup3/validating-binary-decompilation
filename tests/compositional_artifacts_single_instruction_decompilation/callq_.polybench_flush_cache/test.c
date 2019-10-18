void main() {
  __asm__("callq .polybench_flush_cache");
  __asm__(".polybench_flush_cache:");
}
