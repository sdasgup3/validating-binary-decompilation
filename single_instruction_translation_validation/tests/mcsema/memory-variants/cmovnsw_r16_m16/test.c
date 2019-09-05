void leaf() {
  __asm__("cmovnsw -4(%rbp), %bx");
  }

void main() {
  leaf();
}