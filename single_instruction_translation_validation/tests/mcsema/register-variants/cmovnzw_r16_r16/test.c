void leaf() {
  __asm__("cmovnzw %cx, %bx");
  }

void main() {
  leaf();
}