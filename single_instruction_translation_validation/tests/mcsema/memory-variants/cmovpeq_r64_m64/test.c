void leaf() {
  __asm__("cmovpeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}