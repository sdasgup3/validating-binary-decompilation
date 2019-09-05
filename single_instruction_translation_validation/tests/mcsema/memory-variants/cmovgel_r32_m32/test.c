void leaf() {
  __asm__("cmovgel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}