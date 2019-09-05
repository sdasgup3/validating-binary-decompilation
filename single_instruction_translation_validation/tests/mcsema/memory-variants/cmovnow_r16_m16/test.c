void leaf() {
  __asm__("cmovnow -4(%rbp), %bx");
  }

void main() {
  leaf();
}