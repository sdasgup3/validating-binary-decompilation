void leaf() {
  __asm__("cmovaeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}