void leaf() {
  __asm__("popcntl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}