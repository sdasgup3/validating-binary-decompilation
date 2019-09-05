void leaf() {
  __asm__("cmovnpq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}