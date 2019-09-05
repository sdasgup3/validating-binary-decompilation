void leaf() {
  __asm__("popcntq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}