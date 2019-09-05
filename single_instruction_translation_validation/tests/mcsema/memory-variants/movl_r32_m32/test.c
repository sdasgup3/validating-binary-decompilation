void leaf() {
  __asm__("movl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}