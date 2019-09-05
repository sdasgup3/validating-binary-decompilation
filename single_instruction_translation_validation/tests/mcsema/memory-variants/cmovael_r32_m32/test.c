void leaf() {
  __asm__("cmovael -4(%rbp), %ebx");
  }

void main() {
  leaf();
}