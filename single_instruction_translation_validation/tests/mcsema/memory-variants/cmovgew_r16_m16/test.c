void leaf() {
  __asm__("cmovgew -4(%rbp), %bx");
  }

void main() {
  leaf();
}