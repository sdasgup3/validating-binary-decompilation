void leaf() {
  __asm__("xorl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}