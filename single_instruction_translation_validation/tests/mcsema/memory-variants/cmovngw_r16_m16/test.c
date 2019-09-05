void leaf() {
  __asm__("cmovngw -4(%rbp), %bx");
  }

void main() {
  leaf();
}