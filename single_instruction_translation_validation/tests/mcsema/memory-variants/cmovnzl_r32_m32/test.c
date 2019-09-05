void leaf() {
  __asm__("cmovnzl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}