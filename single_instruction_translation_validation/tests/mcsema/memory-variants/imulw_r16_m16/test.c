void leaf() {
  __asm__("imulw -4(%rbp), %bx");
  }

void main() {
  leaf();
}