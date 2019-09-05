void leaf() {
  __asm__("leaw -4(%rbp), %bx");
  }

void main() {
  leaf();
}