void leaf() {
  __asm__("cmpxchgb %ah, -4(%rbp)");
  }

void main() {
  leaf();
}