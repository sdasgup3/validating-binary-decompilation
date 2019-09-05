void leaf() {
  __asm__("subl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}