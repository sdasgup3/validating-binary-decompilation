void leaf() {
  __asm__("cmovnbq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}