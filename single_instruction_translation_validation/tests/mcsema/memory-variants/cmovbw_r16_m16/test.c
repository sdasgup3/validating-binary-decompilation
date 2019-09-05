void leaf() {
  __asm__("cmovbw -4(%rbp), %bx");
  }

void main() {
  leaf();
}