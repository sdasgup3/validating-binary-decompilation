void leaf() {
  __asm__("cmovnol -4(%rbp), %ebx");
  }

void main() {
  leaf();
}