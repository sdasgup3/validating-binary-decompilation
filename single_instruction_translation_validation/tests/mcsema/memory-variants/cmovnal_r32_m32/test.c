void leaf() {
  __asm__("cmovnal -4(%rbp), %ebx");
  }

void main() {
  leaf();
}