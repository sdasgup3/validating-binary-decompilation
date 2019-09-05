void leaf() {
  __asm__("cmpxchg16b -4(%rbp)");
  }

void main() {
  leaf();
}