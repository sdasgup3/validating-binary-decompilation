void leaf() {
  __asm__("sbbl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}