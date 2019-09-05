void leaf() {
  __asm__("cmovaq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}