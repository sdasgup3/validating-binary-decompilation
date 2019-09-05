void leaf() {
  __asm__("popcntw -4(%rbp), %bx");
  }

void main() {
  leaf();
}