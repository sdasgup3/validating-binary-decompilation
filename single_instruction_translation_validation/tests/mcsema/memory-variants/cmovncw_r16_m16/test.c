void leaf() {
  __asm__("cmovncw -4(%rbp), %bx");
  }

void main() {
  leaf();
}