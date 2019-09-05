void leaf() {
  __asm__("cmovnbew -4(%rbp), %bx");
  }

void main() {
  leaf();
}