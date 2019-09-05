void leaf() {
  __asm__("addl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}