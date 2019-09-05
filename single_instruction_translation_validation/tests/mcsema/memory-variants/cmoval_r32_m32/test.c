void leaf() {
  __asm__("cmoval -4(%rbp), %ebx");
  }

void main() {
  leaf();
}