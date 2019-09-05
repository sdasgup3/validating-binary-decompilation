void leaf() {
  __asm__("lzcntw -4(%rbp), %bx");
  }

void main() {
  leaf();
}