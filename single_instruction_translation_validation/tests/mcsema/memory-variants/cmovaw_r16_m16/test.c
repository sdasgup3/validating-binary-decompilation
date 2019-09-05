void leaf() {
  __asm__("cmovaw -4(%rbp), %bx");
  }

void main() {
  leaf();
}