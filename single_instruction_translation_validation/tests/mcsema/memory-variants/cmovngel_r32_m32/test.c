void leaf() {
  __asm__("cmovngel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}