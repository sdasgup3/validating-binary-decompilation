void main() {
  __asm__("cmpxchgq %rcx, -32(%rbp)");
}