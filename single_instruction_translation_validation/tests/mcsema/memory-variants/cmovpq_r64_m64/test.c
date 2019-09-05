void leaf() {
  __asm__("cmovpq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}