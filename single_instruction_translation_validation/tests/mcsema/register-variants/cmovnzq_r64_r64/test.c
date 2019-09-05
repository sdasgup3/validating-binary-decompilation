void leaf() {
  __asm__("cmovnzq %rcx, %rbx");
  }

void main() {
  leaf();
}