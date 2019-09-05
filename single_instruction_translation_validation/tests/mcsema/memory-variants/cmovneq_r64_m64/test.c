void leaf() {
  __asm__("cmovneq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}