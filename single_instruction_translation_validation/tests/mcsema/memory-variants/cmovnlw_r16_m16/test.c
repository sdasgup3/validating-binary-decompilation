void leaf() {
  __asm__("cmovnlw -4(%rbp), %bx");
  }

void main() {
  leaf();
}