void leaf() {
  __asm__("cmovngeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}