void leaf() {
  __asm__("leal -4(%rbp), %ebx");
  }

void main() {
  leaf();
}