void leaf() {
  __asm__("imull -4(%rbp), %ebx");
  }

void main() {
  leaf();
}