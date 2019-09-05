void leaf() {
  __asm__("xorq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}