void leaf() {
  __asm__("cmovsl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}