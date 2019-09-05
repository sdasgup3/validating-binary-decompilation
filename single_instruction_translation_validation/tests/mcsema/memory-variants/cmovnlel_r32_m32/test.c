void leaf() {
  __asm__("cmovnlel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}