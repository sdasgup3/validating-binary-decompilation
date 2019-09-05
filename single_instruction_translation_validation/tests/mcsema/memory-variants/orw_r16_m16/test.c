void leaf() {
  __asm__("orw -4(%rbp), %bx");
  }

void main() {
  leaf();
}