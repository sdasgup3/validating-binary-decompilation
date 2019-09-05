void leaf() {
  __asm__("cmpxchg8b -4(%rbp)");
  }

void main() {
  leaf();
}