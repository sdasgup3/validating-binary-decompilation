void leaf() {
  __asm__("cmovnbw -4(%rbp), %bx");
  }

void main() {
  leaf();
}