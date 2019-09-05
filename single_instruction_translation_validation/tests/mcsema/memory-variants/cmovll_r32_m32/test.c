void leaf() {
  __asm__("cmovll -4(%rbp), %ebx");
  }

void main() {
  leaf();
}