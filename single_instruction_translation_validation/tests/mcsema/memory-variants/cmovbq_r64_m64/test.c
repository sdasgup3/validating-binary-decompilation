void leaf() {
  __asm__("cmovbq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}