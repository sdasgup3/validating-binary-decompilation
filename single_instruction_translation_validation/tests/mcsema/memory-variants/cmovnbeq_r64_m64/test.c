void leaf() {
  __asm__("cmovnbeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}