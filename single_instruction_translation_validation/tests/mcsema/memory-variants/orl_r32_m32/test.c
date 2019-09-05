void leaf() {
  __asm__("orl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}