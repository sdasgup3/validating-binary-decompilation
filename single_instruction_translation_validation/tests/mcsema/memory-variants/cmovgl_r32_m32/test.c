void leaf() {
  __asm__("cmovgl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}