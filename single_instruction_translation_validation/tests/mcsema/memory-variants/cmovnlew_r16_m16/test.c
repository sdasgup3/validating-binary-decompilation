void leaf() {
  __asm__("cmovnlew -4(%rbp), %bx");
  }

void main() {
  leaf();
}