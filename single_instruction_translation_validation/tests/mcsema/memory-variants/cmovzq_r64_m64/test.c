void leaf() {
  __asm__("cmovzq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}