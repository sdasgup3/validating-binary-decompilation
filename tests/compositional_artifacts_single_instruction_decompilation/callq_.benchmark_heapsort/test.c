void main() {
  __asm__("callq .benchmark_heapsort");
  __asm__(".benchmark_heapsort:");
}
