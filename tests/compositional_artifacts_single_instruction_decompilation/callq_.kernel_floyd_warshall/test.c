void main() {
  __asm__("callq .kernel_floyd_warshall");
  __asm__(".kernel_floyd_warshall:");
}
