void leaf() {
  __asm__("cmovnaq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}