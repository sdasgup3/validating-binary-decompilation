void main() {
  __asm__("callq .polybench_alloc_data");
  __asm__(".polybench_alloc_data:");
}
