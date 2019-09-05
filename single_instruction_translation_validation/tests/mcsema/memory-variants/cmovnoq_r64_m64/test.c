void leaf() {
  __asm__("cmovnoq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}