void leaf() {
  __asm__("cmovnbel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}