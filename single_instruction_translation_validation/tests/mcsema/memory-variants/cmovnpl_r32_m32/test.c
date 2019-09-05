void leaf() {
  __asm__("cmovnpl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}