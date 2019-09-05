void leaf() {
  __asm__("cmovleq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}