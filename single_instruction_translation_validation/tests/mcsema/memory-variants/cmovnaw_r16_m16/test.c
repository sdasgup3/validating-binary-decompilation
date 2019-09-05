void leaf() {
  __asm__("cmovnaw -4(%rbp), %bx");
  }

void main() {
  leaf();
}