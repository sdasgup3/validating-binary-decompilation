void leaf() {
  __asm__("cmovow -4(%rbp), %bx");
  }

void main() {
  leaf();
}