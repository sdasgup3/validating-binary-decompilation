void main() {
  __asm__("cmpxchgq %rcx, -16(%rbp)");
}