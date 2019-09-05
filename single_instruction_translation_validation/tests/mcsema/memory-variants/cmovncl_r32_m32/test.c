void leaf() {
  __asm__("cmovncl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}