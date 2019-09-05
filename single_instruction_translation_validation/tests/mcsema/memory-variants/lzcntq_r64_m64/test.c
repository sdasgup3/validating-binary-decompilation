void leaf() {
  __asm__("lzcntq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}