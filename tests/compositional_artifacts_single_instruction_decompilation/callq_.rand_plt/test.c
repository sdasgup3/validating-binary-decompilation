void main() {
  __asm__("callq .rand_plt");
  __asm__(".rand_plt:");
}
