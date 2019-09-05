void leaf() {
  __asm__("cmovgeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}