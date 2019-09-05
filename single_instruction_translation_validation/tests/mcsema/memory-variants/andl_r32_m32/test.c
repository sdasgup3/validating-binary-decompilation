void leaf() {
  __asm__("andl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}