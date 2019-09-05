void leaf() {
  __asm__("cmovnlq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}