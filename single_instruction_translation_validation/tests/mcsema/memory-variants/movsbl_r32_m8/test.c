void leaf() {
  __asm__("movsbl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}