void leaf() {
  __asm__("subq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}