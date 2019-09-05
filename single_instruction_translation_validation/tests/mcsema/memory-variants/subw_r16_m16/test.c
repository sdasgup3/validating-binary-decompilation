void leaf() {
  __asm__("subw -4(%rbp), %bx");
  }

void main() {
  leaf();
}