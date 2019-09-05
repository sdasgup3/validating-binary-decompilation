void leaf() {
  __asm__("cmovlel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}