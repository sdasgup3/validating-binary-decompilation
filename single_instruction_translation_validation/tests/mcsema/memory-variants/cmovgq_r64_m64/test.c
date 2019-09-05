void leaf() {
  __asm__("cmovgq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}