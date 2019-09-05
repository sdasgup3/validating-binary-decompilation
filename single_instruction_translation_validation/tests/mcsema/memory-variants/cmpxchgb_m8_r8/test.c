void leaf() {
  __asm__("cmpxchgb %cl, -4(%rbp)");
  }

void main() {
  leaf();
}