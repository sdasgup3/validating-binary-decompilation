void leaf() {
  __asm__("cmovnzw -4(%rbp), %bx");
  }

void main() {
  leaf();
}