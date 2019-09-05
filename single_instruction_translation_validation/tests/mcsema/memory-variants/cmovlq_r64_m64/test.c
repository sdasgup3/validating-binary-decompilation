void leaf() {
  __asm__("cmovlq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}