void leaf() {
  __asm__("cmovnsq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}