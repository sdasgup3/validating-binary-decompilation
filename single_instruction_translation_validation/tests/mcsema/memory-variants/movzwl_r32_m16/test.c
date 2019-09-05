void leaf() {
  __asm__("movzwl -4(%rbp), %ebx");
  }

void main() {
  leaf();
}