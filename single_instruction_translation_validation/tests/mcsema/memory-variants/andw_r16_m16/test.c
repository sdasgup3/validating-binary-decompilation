void leaf() {
  __asm__("andw -4(%rbp), %bx");
  }

void main() {
  leaf();
}