void leaf() {
  __asm__("cmovngq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}