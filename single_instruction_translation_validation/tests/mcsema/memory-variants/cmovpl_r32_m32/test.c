void leaf() {
  __asm__("cmovpl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}