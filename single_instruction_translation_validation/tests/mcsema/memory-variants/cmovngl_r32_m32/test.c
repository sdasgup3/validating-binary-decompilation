void leaf() {
  __asm__("cmovngl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}