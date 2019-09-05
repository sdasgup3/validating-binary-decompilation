void leaf() {
  __asm__("blsmskl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}