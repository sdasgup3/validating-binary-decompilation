void leaf() {
  __asm__("cmovbl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}