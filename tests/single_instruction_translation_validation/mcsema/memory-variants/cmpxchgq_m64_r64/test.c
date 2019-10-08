void main() {
  __asm__("cmpxchgq %rcx, -4(%rbp)");
}