void leaf() {
  __asm__("cmovpol -4(%rbp), %ebx");
  }

void main() {
  leaf();
}