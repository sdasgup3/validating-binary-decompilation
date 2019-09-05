void leaf() {
  __asm__("cmovlw -4(%rbp), %bx");
  }

void main() {
  leaf();
}