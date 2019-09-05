void leaf() {
  __asm__("movzbl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}