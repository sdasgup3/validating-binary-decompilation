void leaf() {
  __asm__("blsrq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}