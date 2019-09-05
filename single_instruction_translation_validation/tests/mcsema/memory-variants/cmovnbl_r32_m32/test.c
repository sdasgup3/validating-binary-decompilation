void leaf() {
  __asm__("cmovnbl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}