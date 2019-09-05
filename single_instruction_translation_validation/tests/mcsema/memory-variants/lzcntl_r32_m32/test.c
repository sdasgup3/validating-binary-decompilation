void leaf() {
  __asm__("lzcntl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}