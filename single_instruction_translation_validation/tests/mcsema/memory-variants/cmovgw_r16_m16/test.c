void leaf() {
  __asm__("cmovgw -4(%rbp), %bx");
  }

void main() {
  leaf();
}