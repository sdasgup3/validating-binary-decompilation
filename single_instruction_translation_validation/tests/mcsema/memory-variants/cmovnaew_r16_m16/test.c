void leaf() {
  __asm__("cmovnaew -4(%rbp), %bx");
  }

void main() {
  leaf();
}