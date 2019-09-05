void leaf() {
  __asm__("cmovzw -4(%rbp), %bx");
  }

void main() {
  leaf();
}