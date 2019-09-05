void leaf() {
  __asm__("cmovol -4(%rbp), %ebx");
  }

void main() {
  leaf();
}