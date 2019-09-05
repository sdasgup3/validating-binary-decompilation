void leaf() {
  __asm__("cmovnaeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}