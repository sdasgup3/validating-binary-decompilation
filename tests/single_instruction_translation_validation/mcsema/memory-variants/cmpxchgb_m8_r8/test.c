void main() {
  __asm__("cmpxchgb %cl, -4(%rbp)");
}