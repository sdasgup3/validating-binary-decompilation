void leaf() {
  __asm__("cmovncq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}