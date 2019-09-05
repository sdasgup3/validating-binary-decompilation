void leaf() {
  __asm__("cmovnew -4(%rbp), %bx");
  }

void main() {
  leaf();
}