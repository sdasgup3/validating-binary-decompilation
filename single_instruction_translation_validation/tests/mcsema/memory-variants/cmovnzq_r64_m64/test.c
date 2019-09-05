void leaf() {
  __asm__("cmovnzq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}