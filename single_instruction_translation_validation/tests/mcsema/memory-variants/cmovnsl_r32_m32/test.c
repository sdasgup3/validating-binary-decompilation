void leaf() {
  __asm__("cmovnsl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}